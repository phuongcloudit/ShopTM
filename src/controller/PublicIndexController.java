package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import model.bean.Cart;
import model.bean.Order;
import model.bean.OrderDetail;
import model.bean.Product;
import model.dao.CategoryDAO;
import model.dao.OrderDAO;
import model.dao.OrderDetailDAO;
import model.dao.PaymentDAO;
import model.dao.ProductDAO;
import util.SlugUtil;

@Controller
@RequestMapping("")
public class PublicIndexController {

	@Autowired
	private Defines defines;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private PaymentDAO paymentDAO;

	@Autowired
	private OrderDAO orderDAO;

	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	@Autowired
	private SlugUtil slugUtil;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private HttpSession session;

	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
		modelMap.addAttribute("slugUtil", slugUtil);
		modelMap.addAttribute("listCat", categoryDAO.getItems());
		modelMap.addAttribute("numCart", session.getAttribute("numberCart"));
		@SuppressWarnings("unchecked")
		ArrayList<Cart> cart = (ArrayList<Cart>) session.getAttribute("cart");
		boolean check = true;
		if (cart == null) {
			cart = new ArrayList<>();
		}
		session.setAttribute("cart", cart);
		modelMap.addAttribute("sumTotal", session.getAttribute("sumTotal"));

	}

	@RequestMapping("")
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("listProduct", productDAO.getItems10());
		modelMap.addAttribute("numCart", session.getAttribute("numberCart"));

		return "public.index";
	}

	@RequestMapping("/cart")
	public String cart(ModelMap model) {
		model.addAttribute("listCart", session.getAttribute("listCart"));
		@SuppressWarnings("unchecked")
		ArrayList<Cart> listcart = (ArrayList<Cart>) session.getAttribute("cart");
		float sum = 0;
		for (Cart item : listcart) {
			sum = sum + item.getPrice() * item.getQuantity();
		}
		int numberCart = listcart.size();
		session.setAttribute("sumTotal", sum);
		session.setAttribute("totalProduct", numberCart);
		return "public.cart";
	}

	@RequestMapping(value = "/cart/addItem", method = RequestMethod.POST)
	public String dcart(HttpSession session, @RequestParam("pid") int id, ModelMap model) {
		System.out.println(id);
		String result = "<div class=\"cart-box\">\r\n"
				+ "												<span class=\"title\">Giỏ hàng</span><span id=\"cart-total\">"
				+ id + "</span>\r\n" + "											</div>";

		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public void cart(HttpSession session, @RequestParam("pid") int id, ModelMap model) {
		Product objProduc = productDAO.getItem(id);
		Cart objcart = new Cart(objProduc.getId(), objProduc.getName(), objProduc.getPicture(), 1,
				objProduc.getPrice());
		@SuppressWarnings("unchecked")
		ArrayList<Cart> listcart = (ArrayList<Cart>) session.getAttribute("cart");
		boolean check = true;
		if (listcart == null) {
			listcart = new ArrayList<>();
		}
		for (Cart item : listcart) {
			if (item.getId_product() == objProduc.getId()) {
				System.out.println("alo");
				item.setQuantity(item.getQuantity() + 1);
				check = true;

			} else {
				check = false;
			}
		}
		if (check == false || listcart.size() == 0) {
			listcart.add(objcart);
		}
		int numberCart = listcart.size();
		System.out.println(numberCart);
		session.setAttribute("listCart", listcart);
		session.setAttribute("numberCart", numberCart);
	}

	@RequestMapping("/checkout")
	public String checkout(ModelMap model) {
		model.addAttribute("listPay", paymentDAO.getItems());
		return "public.checkout";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String index(@RequestParam("fullname") String fullname,@RequestParam("email") String email,@RequestParam("address") String address,@RequestParam("phone") String phone, @RequestParam("payment") int pay,RedirectAttributes ra) {

		Order order = new Order(fullname, address, email, phone);
		session.setAttribute("emailinfo", email);
		@SuppressWarnings("unchecked")
		ArrayList<Cart> listcart = (ArrayList<Cart>) session.getAttribute("cart");
		if (orderDAO.addItem(order) > 0) {
			ra.addFlashAttribute("msg", Defines.sendSUCCESS);
			for (Cart item : listcart) {
				OrderDetail obj = new OrderDetail(0, item.getId_product(), orderDAO.getItemByLastEmail(email).getId(), item.getQuantity(), item.getPrice(), null, pay);
				orderDetailDAO.addItem(obj);
			}
			System.out.println("OK");
			return "redirect:/thankyou";
		} else {
			ra.addFlashAttribute("msg", Defines.sendERROR);
			System.out.println("NOT OK");
		}
		return "public.checkout";
	}

	@RequestMapping(value = { "/{name}/{id}.html" }, method = RequestMethod.GET)
	public String product(@PathVariable("id") int id, ModelMap modelMap) {
		

		modelMap.addAttribute("item", productDAO.getItem(id));

		return "public.product";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "public.contact";
	}

	@RequestMapping("/thankyou")
	public String thankyou(ModelMap model) {
		model.addAttribute("info", orderDAO.getItemByLastEmail((String)session.getAttribute("emailinfo")));
		return "public.thankyou";
	}

	@RequestMapping("/search")
	public String search() {
		return "public.search";
	}

	@RequestMapping(value = { "/{namecat}-{id}/{page}.html", "/{namecat}-{id}.html" }, method = RequestMethod.GET)
	public String category(@PathVariable(value = "page", required = false) Integer page, @PathVariable("id") int id,
			ModelMap modelMap) {
		if (page == null) {
			page = 1;
		}

		int sumPage = (int) Math.ceil((float) (productDAO.getCount()) / Defines.ROW_COUNT);
		int rowCount = Defines.ROW_COUNT;
		int offset = (page - 1) * rowCount;
		modelMap.addAttribute("listProductbyID", productDAO.getItemsbyID(offset, id));
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("objCat", categoryDAO.getItem(id));

		// PagedListHolder page = new PagedListHolder<>(landDAO.getItems(offset)); load
		// toàn bộ
		return "public.category";
	}

	@RequestMapping(value = "/total", method = RequestMethod.POST)
	public @ResponseBody float total(ModelMap model, RedirectAttributes ra) {
		float sum = 0;
		@SuppressWarnings("unchecked")
		ArrayList<Cart> listcart = (ArrayList<Cart>) session.getAttribute("cart");
		for (Cart item : listcart) {
			sum = sum + item.getPrice() * item.getQuantity();
		}
		session.setAttribute("sumTotal", sum);
		return sum;
	}

	@RequestMapping(value = "/cart/update", method = RequestMethod.POST)
	public @ResponseBody String up(@RequestParam("quantity") int number, @RequestParam("pid") int id, ModelMap model,
			RedirectAttributes ra) {
		@SuppressWarnings("unchecked")
		ArrayList<Cart> listcart = (ArrayList<Cart>) session.getAttribute("cart");
		for (Cart item : listcart) {
			if (id == item.getId_product()) {
				item.setQuantity(number);
			}
		}

		int numberCart = listcart.size();
		System.out.println(numberCart);
		session.setAttribute("listCart", listcart);
		session.setAttribute("numberCart", numberCart);
		return " <input type=\"text\" class=\"form-control text-center only-number\" id=\"numberQuantity-" + id
				+ "\" value=\"" + number + "\">";
	}
}
