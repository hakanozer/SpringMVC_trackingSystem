package com.calisma.trackingsystem;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Product;
import utils.DB;
import utils.HibernateUtil;

@Controller
public class UpdateProductController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
@RequestMapping(value="/updateProduct/{pid}",method=RequestMethod.GET)
public String updateProduct(Model model,@PathVariable String pid)
{
	Product pr = new Product();
	String selectQuery = "select * from products where pid = ?";
	try {
		PreparedStatement ps = new DB().pBaglan(selectQuery);
		ps.setString(1, pid);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			pr.setPid(rs.getInt(1));
			pr.setPname(rs.getString(2));
			pr.setPnumber(rs.getInt(3));
			pr.setPcategory(rs.getInt(4));
			pr.setPdescription(rs.getString(5));
			pr.setPcompany(rs.getInt(6));
			pr.setPprice(rs.getFloat(7));
			pr.setPdatetime(rs.getDate(8));
			model.addAttribute("product", pr);
			
		
		}
		
		
	} catch (Exception e) {
		System.out.println("veri getirme hatasý: "+e);
	}
	
	return "updateproduct";
}
	@ResponseBody
	@RequestMapping(value="/updateFinish",method=RequestMethod.POST)
	public String updateFinish(Product pro)
	{
		System.out.println("update ajax çalýþtý");
		String updateQuery = "update products set pname=? , pnumber=?, pcategory=? , pdescription=? , pcompany=?, pprice=?, pdatetime=now() where pid=?";
		try {
			PreparedStatement ps = new DB().pBaglan(updateQuery);
			ps.setString(1,pro.getPname());
			ps.setInt(2, pro.getPnumber());
			ps.setInt(3, pro.getPcategory());
			ps.setString(4, pro.getPdescription());
			ps.setInt(5, pro.getPcompany());
			ps.setFloat(6, pro.getPprice());
			ps.setInt(7, pro.getPid());
			int updateResult = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("update hatasý :"+e);
		}
		
		return "productmanagement";
	}

}
