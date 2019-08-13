package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import constant.Defines;

@Controller
@RequestMapping("admin")
public class AdminDiscountController {
	
	
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	@RequestMapping(value = "/discount", method = RequestMethod.GET)
	public String index(){
		return "admin.discount.index";
	}
	@RequestMapping(value = "/discount/add", method = RequestMethod.GET)
	public String add(){
		return "admin.discount.add";
	}
	@RequestMapping(value = "/discount/edit", method = RequestMethod.GET)
	public String edit(){
		return "admin.discount.edit";
	}
	
}
