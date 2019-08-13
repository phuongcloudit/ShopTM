package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import model.bean.User;
import model.dao.UserDAO;

@Controller
@RequestMapping("admin")
public class AdminUserController {
	
	
	
	@Autowired
	private Defines defines;
	@ModelAttribute
	public void addCommmonObject(ModelMap modelMap) {
		modelMap.addAttribute("defines", defines );
	}
	

	@Autowired
	private UserDAO userDao;
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("listUser", userDao.getItems());
		return "admin.user.index";
	}
	@RequestMapping(value = "/users/add", method = RequestMethod.GET)
	public String add(){
		return "admin.user.add";
	}
	@RequestMapping(value = "/users/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute("objU", userDao.getItem(id));
		
		return "admin.user.edit";
	}
	@RequestMapping(value = "/users/{id}/edit", method = RequestMethod.POST)
	public String edit(@RequestParam("fullname") String fullname,@RequestParam("email") String email,@RequestParam("password") String password,@RequestParam("address") String address, @RequestParam("phone") String phone, @PathVariable("id") int id, ModelMap modelMap, RedirectAttributes ra) {
		if(userDao.editItem(fullname, email, password, address, phone, id) > 0) {
			
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/users";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		
		return "admin.user.index";
	}
	@RequestMapping(value = "/users/{id}/del", method = RequestMethod.GET)
	public String del(@PathVariable("id") int id, RedirectAttributes ra,@ModelAttribute("objU") User objU ) {
		if(userDao.delItem(id) > 0) {
			ra.addFlashAttribute("msg", Defines.SUCCESS);
			return "redirect:/admin/users";
		} else {
			ra.addFlashAttribute("msg", Defines.ERROR);
		}
		return "admin.user.index";
	}
}
