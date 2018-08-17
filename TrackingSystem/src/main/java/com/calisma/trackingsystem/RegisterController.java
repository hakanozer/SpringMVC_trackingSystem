package com.calisma.trackingsystem;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;

import model.Admin;
import utils.DB;
import utils.HibernateUtil;
import utils.UtilClass;

@Controller
public class RegisterController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	
	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String userRegister(Admin adm, Model model) {
		
		try {
			Session sesi = sf.openSession();
			Transaction tr = sesi.beginTransaction();
			
			Admin ad = new Admin();
			ad.setAid(Integer.MAX_VALUE);
			ad.setAmail(adm.getAmail());
			ad.setAname(adm.getAname());
			String md5Pass = UtilClass.MD5(adm.getApassword());
			ad.setApassword(md5Pass);
			ad.setAsurname(adm.getAsurname());
			sesi.save(ad);
	            	  
			tr.commit();
		} catch (Exception e) {
			model.addAttribute("ayniMail", "Bu mail zaten kayıtlı");
			return "register";
		} 
		
		return "redirect:/register";
	}
	
	
}
