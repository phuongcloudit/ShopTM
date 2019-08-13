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
public class AdminContactController {
	
	
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String index(){
		return "admin.contact.index";
	}
	@RequestMapping(value = "/contact/view", method = RequestMethod.GET)
	public String add(){
		return "admin.contact.view";
	}
	
}
