package com.calisma.trackingsystem;

import java.sql.ResultSet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.jdbc.PreparedStatement;

import utils.DB;
import utils.UtilClass;

@Controller
public class LoginController {
	
	DB db = new DB();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	
	@RequestMapping(value = "/userLogin", method=RequestMethod.POST)
	public String userLogin(
			@RequestParam String email, 
			@RequestParam String password,
			@RequestParam (defaultValue="") String remember,
			HttpServletRequest req,
			HttpServletResponse res,
			Model model) {
		try {
			String loginQuery = "select * from admin where amail = ? and apassword = ?";
			String md5Pass = UtilClass.MD5(password);
			PreparedStatement pre = (PreparedStatement) db.pBaglan(loginQuery);
			pre.setString(1, email);
			pre.setString(2, md5Pass);
			ResultSet rs = pre.executeQuery();
			if(rs.next()) {
				int userId = rs.getInt("aid");
				String userName = rs.getString("aname");
				String userSurname = rs.getString("asurname");
				
				req.getSession().setAttribute("userid", userId);
				req.getSession().setAttribute("name", userName);
				req.getSession().setAttribute("surname", userSurname);
				
				if(remember != "") {
					Cookie ck = new Cookie("userid", ""+userId);
					ck.setMaxAge(3600);
					res.addCookie(ck);
				}
				return "redirect:/dashboard";
			}else {
				model.addAttribute("error", "Email veya sifre hatali");
				return "redirect:/";
			}
		} catch (Exception e) {
			System.err.println("User Login Error : " + e);
		}
		return "redirect:/";
	}

	
	@RequestMapping(value="/signOut", method=RequestMethod.GET)
	public String signOut(HttpServletRequest req, HttpServletResponse res) {
		Cookie ck = new Cookie("userid", "");
		ck.setMaxAge(0);
		res.addCookie(ck);
		req.getSession().invalidate();
		return "redirect:/";
	}
	
}
