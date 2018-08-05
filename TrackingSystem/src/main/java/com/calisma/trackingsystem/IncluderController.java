package com.calisma.trackingsystem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IncluderController {

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header() {
		return "inc/header";
	}
	
	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String css() {
		return "inc/css";
	}
	
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu() {
		return "inc/menu";
	}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "inc/footer";
	}
	
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String js() {
		return "inc/js";
	}
	
}
