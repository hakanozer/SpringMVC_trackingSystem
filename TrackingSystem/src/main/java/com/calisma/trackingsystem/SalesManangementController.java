package com.calisma.trackingsystem;
import model.Product;
import model.Sales;
import utils.DB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SalesManangementController {
  @RequestMapping(value="/salesmanagement", method=RequestMethod.GET )
	public String salesManangement(Model model) {
	
	  model.addAttribute("lst",dataResult());
	  model.addAttribute("lst2", dataProduct());
	  System.out.println("1111111");
	  return "salesmanagement";
		
	}
	@RequestMapping(value= "/saleInsert",method=RequestMethod.POST)
	public String saleInsert(Sales sl,Product pro,Model model) {
		System.out.println("girdiis");
		String InsertQuery= "insert into sales values(null,?,?,?,?,now())";
		
		try {

			PreparedStatement pr = new DB().pBaglan(InsertQuery);
			pr.setString(1, sl.getSname());
			pr.setInt(2, sl.getSproductid());
			pr.setInt(3, sl.getSnumberofsale());
			pr.setString(4, sl.getSdescription());
			int ekleSayi = pr.executeUpdate();
			
			
		} catch (Exception e) {
		System.err.println("aFafaFaf:"+e);
		}
		System.out.println("22222");
		return "redirect:/salesmanagement";
		
	}
	@RequestMapping(value="/deleteSale/{sid}",method=RequestMethod.GET)
	public String deleteSale(@PathVariable String sid) {
		String deleteQuery = "delete from sales where sid=?";
		try {
			PreparedStatement pr = new DB().pBaglan(deleteQuery);
			pr.setString(1, sid);
			int deleteResult = pr.executeUpdate();
		} catch (Exception e) {
			System.err.println("silme hatası: "+e);
		}
		
		
		
		return "redirect:/salesmanagement";
	}
	
	public List<Product> dataProduct() {
		
		List<Product> lst = new ArrayList<Product>();
		
		String selectQuery = "select * from products";
		
		try {
			PreparedStatement pr = new DB().pBaglan(selectQuery);
			ResultSet rs = pr.executeQuery();
			while(rs.next()) {
				Product prc = new Product();
				prc.setPid(rs.getInt(1));
				prc.setPname(rs.getString(2));
				prc.setPnumber(rs.getInt(3));
				prc.setPcategory(rs.getInt(4));
				prc.setPdescription(rs.getString(5));
				prc.setPcompany(rs.getInt(6));
				prc.setPprice(rs.getFloat(7));
				prc.setPdatetime(rs.getDate(8));
				lst.add(prc);
			}
				
			
		} catch (Exception e) {
			
		}
		return lst;
		
	}
	public List<Sales> dataResult(){
		
		List<Sales> lst = new ArrayList<Sales>();
		
		String selectQuery = "select * from sales left join products on sales.sproductid=products.pid";
		try {
			PreparedStatement pr = new DB().pBaglan(selectQuery);
			ResultSet rs = pr.executeQuery();
			while(rs.next()) {
				Sales sl = new Sales();
				sl.setSid(rs.getInt("sid"));
				sl.setSname(rs.getString("sname"));
				sl.setSproductname(rs.getString("pname"));
				sl.setSnumberofsale(rs.getInt("snumberofsale"));
				sl.setSdescription(rs.getString("sdescription"));
				sl.setSdate(rs.getString("sdatetime"));
				lst.add(sl);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return lst;
		
		
	}
	
	
	
}
