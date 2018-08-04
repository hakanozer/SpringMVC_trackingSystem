package com.calisma.trackingsystem;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Admin;
import utils.HibernateUtil;
import utils.UtilClass;

@Controller
public class HomeController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		Admin ad = new Admin();
		ad.setAid(Integer.MAX_VALUE);
		ad.setAname("Ali");
		ad.setAsurname("Bilmem");
		ad.setAmail("ali@ali.com");
		ad.setApassword(UtilClass.MD5("12345"));
		
		sesi.save(ad);
		tr.commit();
		
		return "home";
	}
	
}
