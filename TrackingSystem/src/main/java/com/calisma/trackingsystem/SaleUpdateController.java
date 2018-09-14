package com.calisma.trackingsystem;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import model.Sales;
import utils.DB;

@Controller
public class SaleUpdateController {
@RequestMapping(value="/saleUpdate/{sid}",method=RequestMethod.GET)
	public String saleUpdate(Model model, @PathVariable String sid) {
		model.addAttribute("lst2",dataResult());
	Sales sl = new Sales();
	String selectQuery = "select * from sales left join products on sales.sproductid=products.pid where sid=? ";
	try {
		PreparedStatement pr = new DB().pBaglan(selectQuery);
		pr.setString(1, sid);
		
		ResultSet rs = pr.executeQuery();
		if(rs.next()) {
			sl.setSid(rs.getInt("sid"));
			sl.setSname(rs.getString("sname"));
			sl.setSproductname(rs.getString("pname"));
			sl.setSnumberofsale(rs.getInt("snumberofsale"));
			sl.setSdescription(rs.getString("sdescription"));
			sl.setSdate(rs.getString("sdatetime"));
			model.addAttribute("sale", sl);
		 
		}
	
		
	} catch (Exception e) {
		System.out.println("hata1: "+e);
	}
	
	
	return "saleupdate";
		
		
		
	}
@RequestMapping(value="/asd",method=RequestMethod.GET)
public String asd() {
	System.out.println("asd girdi");
	return "salesmanagement";
}
@RequestMapping(value="/cihangir",method=RequestMethod.POST)
public String updateSale(Sales sl) {
	System.out.println("update girdi");
	String updateQuery = "update sales set sname=?,sproductid=?,snumberofsale=?,sdescription=?,sdatetime=now() where sid=?";
	try {
		PreparedStatement pr = new DB().pBaglan(updateQuery);
		pr.setString(1, sl.getSname());
		System.out.println("SNAME: "+sl.getSname());
		pr.setInt(2, sl.getSproductid());
		pr.setInt(3, sl.getSnumberofsale());
		pr.setString(4, sl.getSdescription());
		pr.setInt(5, sl.getSid());
		int updateResult = pr.executeUpdate();
		System.out.println("resutl number : "+updateResult);
	} catch (Exception e) {
		System.out.println("update: "+e);
	}
	
	return "redirect:/salesmanagement";
}
public List<Product> dataResult(){
	
	List<Product> lst = new ArrayList<Product>();
	
	String selectQuery = "select * from products";
	try {
		PreparedStatement pr = new DB().pBaglan(selectQuery);
		ResultSet rs = pr.executeQuery();
		while(rs.next()) {
			Product pro = new Product();
			pro.setPcategory(rs.getInt("pcategory"));
			pro.setPcompany(rs.getInt("pcompany"));
			pro.setPdatetime(rs.getDate("pdatetime"));
			pro.setPdescription(rs.getString("pdescription"));
			pro.setPid(rs.getInt("pid"));
			pro.setPname(rs.getString("pname"));
			pro.setPnumber(rs.getInt("pnumber"));
			pro.setPprice(rs.getFloat("pprice"));
			lst.add(pro);
			
		}
		
	} catch (Exception e) {
	System.out.println("hT1: "+e);	
	}
	
	return lst;
	
	
}

	
}
