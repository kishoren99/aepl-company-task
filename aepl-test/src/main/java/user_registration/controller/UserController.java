package user_registration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import user_registration.dao.UserDao;
import user_registration.dto.UserDto;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;

	@RequestMapping("/kishore")
	@ResponseBody
	public String insert(@ModelAttribute UserDto userDto) {
		System.out.println("user controller");
		userDao.insert(userDto);
		return "User is Registered Succesfully";
	}
}
