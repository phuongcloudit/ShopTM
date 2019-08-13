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
public class AdminSliderController {
	
	
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	
	
	@RequestMapping(value = "/slider", method = RequestMethod.GET)
	public String index(){
		return "admin.slider.index";
	}
	@RequestMapping(value = "/slider/add", method = RequestMethod.GET)
	public String add(){
		return "admin.slider.add";
	}
	@RequestMapping(value = "/slider/edit", method = RequestMethod.GET)
	public String edit(){
		return "admin.slider.edit";
	}
	
}
