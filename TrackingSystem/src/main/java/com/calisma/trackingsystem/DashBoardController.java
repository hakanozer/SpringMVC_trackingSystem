package com.calisma.trackingsystem;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import utils.UtilClass;

@Controller
public class DashBoardController {
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(HttpServletRequest req) {
		return UtilClass.control("dashboard", req);
	}

}
