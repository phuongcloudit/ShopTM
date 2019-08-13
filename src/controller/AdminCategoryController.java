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
import model.bean.Category;
import model.dao.CategoryDAO;

@Controller
@RequestMapping("admin")
public class AdminCategoryController {
	
	
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	
	@Autowired
	private CategoryDAO categoryDao;
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("listCat", categoryDao.getItems());
		return "admin.cat.index";
	}
	
	@RequestMapping(value = "/category/add", method = RequestMethod.GET)
	public String add() {
		return "admin.cat.add";
	}
	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("objCat") Category objCat,BindingResult br, RedirectAttributes ra) {
		if(br.hasErrors()) {
			return "admin.cat.add";
		}
		if(categoryDao.addItem(objCat) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/category";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "admin.cat.add";
	}
	@RequestMapping(value = "/category/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("objCat", categoryDao.getItem(id));
		
		return "admin.cat.edit";
	}
	@RequestMapping(value = "/category/edit/{id}", method = RequestMethod.POST)
	public String edit(@RequestParam("cname") String cname,@PathVariable("id") int id, ModelMap modelMap, RedirectAttributes ra) {
		if(categoryDao.editItem(cname, id) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/category";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		
		return "admin.cat.edit";
	}
	
	@RequestMapping(value = "/category/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra,@ModelAttribute("objCat") Category cat ) {
		if(categoryDao.delItem(id) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/category";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "admin.cat.index";
	}
	
}
