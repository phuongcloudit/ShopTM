package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import constant.Defines;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	
	
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	@RequestMapping("")
	public String index(){
		return "admin.index";
	}
	
}
