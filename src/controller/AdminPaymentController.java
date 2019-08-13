package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import model.bean.Payment;
import model.dao.PaymentDAO;

@Controller
@RequestMapping("admin")
public class AdminPaymentController {
	
	
	
	@Autowired
	private Defines defines;
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String index(ModelMap modelMap){
		modelMap.addAttribute("listPay", paymentDAO.getItems());
		return "admin.payment.index";
	}
	@RequestMapping(value = "/payment/add", method = RequestMethod.GET)
	public String add(){
		return "admin.payment.add";
	}
	@RequestMapping(value = "/payment/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("pay") Payment pay,BindingResult br, RedirectAttributes ra) {
		if(br.hasErrors()) {
			return "admin.payment.add";
		}
		if(paymentDAO.addItem(pay) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/payment";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "admin.payment.add";
	}
	@RequestMapping(value = "/payment/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("pay", paymentDAO.getItem(id));
		
		return "admin.payment.edit";
	}
	@RequestMapping(value = "/payment/edit/{id}", method = RequestMethod.POST)
	public String edit(@RequestParam("name") String name,@PathVariable("id") int id, ModelMap modelMap, RedirectAttributes ra) {
		if(paymentDAO.editItem(name, id) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/payment";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		
		return "admin.payment.edit";
	}
	@RequestMapping(value = "/payment/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra,@ModelAttribute("pay") Payment pay ) {
		if(paymentDAO.delItem(id) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/payment";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "admin.payment.index";
	}
	
}
