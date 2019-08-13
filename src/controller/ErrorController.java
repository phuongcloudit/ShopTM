package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import constant.Defines;

@Controller
@RequestMapping("")
public class ErrorController {

	
	@Autowired
	private Defines defines;
	
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	
	@RequestMapping(value = "/403")
	public String index() {
		return "error403";
	}
	@RequestMapping(value = "/404")
	public String index2() {
		return "error404";
	}
	
}
