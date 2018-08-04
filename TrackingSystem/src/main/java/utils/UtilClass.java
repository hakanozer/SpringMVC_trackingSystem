package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class UtilClass {

	public static String MD5(String md5) {
		   try {
		        java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
		        byte[] array = md.digest(md5.getBytes());
		        StringBuffer sb = new StringBuffer();
		        for (int i = 0; i < array.length; ++i) {
		          sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1,3));
		       }
		        return sb.toString();
		    } catch (java.security.NoSuchAlgorithmException e) {
		    }
		    return null;
		}
	
	// session control user
	public static String control(String page, HttpServletRequest req) {
		
		// cookie control 
		if (req.getCookies() != null) {
			Cookie[] ck = req.getCookies();
			for (int i = 0; i < ck.length; i++) {
				Cookie c = ck[i];
				if(c.getName().equals("userid")) {
					String userid = c.getValue();
					req.getSession().setAttribute("userid", userid);
				}
			}
		}
		
		boolean userLoginControl = req.getSession().getAttribute("userid") != null;
		if(userLoginControl) {
			// user is login
			return page;
		}else {
			// user is not login
			return "redirect:/";
		}
	}
	

}
