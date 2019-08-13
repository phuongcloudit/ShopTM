package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import model.bean.Product;
import model.dao.CategoryDAO;
import model.dao.ProductDAO;

@Controller
@RequestMapping("admin")
public class AdminProductController {
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	@RequestMapping(value =  "/product" , method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		

		modelMap.addAttribute("listProduct", productDAO.getItems());
		// PagedListHolder page = new PagedListHolder<>(landDAO.getItems(offset)); load
		// toàn bộ
		return "admin.product.index";
	}
	@RequestMapping(value = "/product/add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		modelMap.addAttribute("listCat", categoryDAO.getItems());
		return "admin.product.add";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("product") Product product, @RequestParam("hinhanh") CommonsMultipartFile cmf,
			HttpServletRequest request, RedirectAttributes ra) {
		String fileName = cmf.getOriginalFilename();
		if (!"".equals(fileName)) {
			// upload
			product.setPicture(fileName);
			String appPath = request.getServletContext().getRealPath("");
			String dirPath = appPath + Defines.DIR_UPLOAD;
			File createDir = new File(dirPath);
			if (!createDir.exists()) {
				createDir.mkdir();
			}
			String filePath = dirPath + File.separator + fileName;

			try {
				cmf.transferTo(new File(filePath));
				System.out.println(filePath);
			} catch (IOException e) {
				System.out.println("loi");
				e.printStackTrace();
			}

			if (productDAO.addItem(product) > 0) {

				ra.addFlashAttribute("msg", Defines.SUCCESS);
			} else {
				ra.addFlashAttribute("msg", Defines.ERROR);
			}
			//System.out.println(filePath);
			
		}
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value="/product/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("objP", productDAO.getItem(id));
		modelMap.addAttribute("listCat", categoryDAO.getItems());
		return "admin.product.edit";
	}
	
	@RequestMapping(value = "/product/edit/{id}", method = RequestMethod.POST)
	public String edit(@PathVariable("id") int id,@ModelAttribute("product") Product product, @RequestParam("hinhanh") CommonsMultipartFile cmf, ModelMap modelMap,HttpServletRequest request, RedirectAttributes ra) {
		String fileName = cmf.getOriginalFilename();
		if (!"".equals(fileName)) {
			// upload
			product.setPicture(fileName);
			String appPath = request.getServletContext().getRealPath("");
			String dirPath = appPath + Defines.DIR_UPLOAD;
			File createDir = new File(dirPath);
			if (!createDir.exists()) {
				createDir.mkdir();
			}
			String filePath = dirPath + File.separator + fileName;
			try {
				cmf.transferTo(new File(filePath));
				System.out.println(filePath);
			} catch (IOException e) {
				System.out.println("loi");
				e.printStackTrace();
			}

			if (productDAO.editItem(product, id) > 0) {
				ra.addFlashAttribute("msg", Defines.SUCCESS);
			} else {
				ra.addFlashAttribute("msg", Defines.ERROR);
			}
			//System.out.println(filePath);
			
		}
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value="/product/del/{id}", method=RequestMethod.GET)
	public String del(@PathVariable("id") int id,HttpServletRequest request, RedirectAttributes ra) {
		Product product = productDAO.getItem(id);
		if(product != null ) {
			String fileName = product.getPicture();
			if(!"".equals(fileName)) {
				String appPath = request.getServletContext().getRealPath("");
				String dirPath = appPath + Defines.DIR_UPLOAD;
				File file = new File(dirPath + File.separator + fileName);
				file.delete();
			}
			
			if(productDAO.delItem(id) > 0) {
				ra.addFlashAttribute("msg", Defines.SUCCESS);
				return "redirect:/admin/product";
			} else {
				ra.addFlashAttribute("msg", Defines.ERROR);
			}
		}
		
		return "redirect:/admin/product";
	}
	
}
