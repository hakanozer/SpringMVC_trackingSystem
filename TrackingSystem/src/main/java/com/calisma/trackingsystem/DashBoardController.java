package com.calisma.trackingsystem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashBoardController {
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String login() {
		return "dashboard";
	}

}
