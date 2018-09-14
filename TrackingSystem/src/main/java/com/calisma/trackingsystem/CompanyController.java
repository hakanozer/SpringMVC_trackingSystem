package com.calisma.trackingsystem;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Company;
import utils.DB;

@Controller
public class CompanyController {
Company cp=new Company();
DB db=new DB();
	@RequestMapping(value="/companymanagement",method=RequestMethod.GET)
	public String company(Model model) {
		model.addAttribute("cp",companylist());
		
		
		return "companymanagement";
	}
	@RequestMapping(value="/companyInsert",method=RequestMethod.POST)
	public String companyInsert(Company cp) {
		try {
			
			String ekleQuery = "insert into company values (null,?,?,?,?)";
			PreparedStatement ekle = db.pBaglan(ekleQuery);
ekle.setString(1,cp.getCompname());
ekle.setString(2,cp.getCompmail());
ekle.setInt(3, cp.getCompno());
ekle.setString(4,cp.getCompadress());

			int ekleSayi = ekle.executeUpdate();
			System.out.println("ekleme baþarýlý" + ekleSayi);
		} catch (Exception e) {
			System.err.println("yazma Hatasý:" + e);
		}
		
		
		return "redirect:/companymanagement";
	}
	public List<Company>  companylist() {
		List<Company> cl=new ArrayList<Company>();
		
		try {
			String kategoriQuery="select * from company";
			PreparedStatement pr=db.pBaglan(kategoriQuery);
			ResultSet rs=pr.executeQuery();
			while(rs.next()) {
				Company cp=new Company();
				cp.setCompid(rs.getInt("compid"));
				cp.setCompname(rs.getString("compname"));
				cp.setCompmail(rs.getString("compmail"));
				cp.setCompno(rs.getInt("compno"));
				cp.setCompadress(rs.getString("compadress"));
				cl.add(cp);
			}
					
		} catch (Exception e) {
			System.err.println("Company getirme hatasi :"+e);
		}
		
		
		
		return cl;
		
	
		
		
		
		
		
	}
	
}
