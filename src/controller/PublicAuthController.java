package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import model.bean.User;
import model.dao.UserDAO;

@Controller
@RequestMapping("")
public class PublicAuthController {

	
	@Autowired
	private Defines defines;
	
	@Autowired
	private UserDAO userDao;
	
	@Autowired
	private BCryptPasswordEncoder password;
	
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines);
	}

	
	@RequestMapping("/login")
	public String login(){
		return "public.login";
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String add() {
		return "public.register";
	}
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("objU") User objU,@RequestParam("password") String pass,BindingResult br, RedirectAttributes ra) {
		if(br.hasErrors()) {
			return "public.register";
		}
		System.out.println(pass);
		String passencode = password.encode(pass);
		System.out.println(passencode);
		if(userDao.addItem(objU, passencode) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/register";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "public.register";
	}
	
	
}
