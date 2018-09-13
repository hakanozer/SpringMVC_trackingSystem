package com.calisma.trackingsystem;





import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.Product;
import utils.DB;
import utils.HibernateUtil;
import utils.UtilClass;

@Controller
public class ProductManagementController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	@RequestMapping(value = "/productmanagement", method = RequestMethod.GET)
	public String productmanagement(Model model,HttpServletRequest req) {
		
		List<Product> lst = new ArrayList<Product>();
		lst=dataResult();
		int size = lst.size();
		
		
		model.addAttribute("products", dataResult());
		model.addAttribute("rowcount", size);
		System.out.println("uzunluk: "+size);
		
		
		return UtilClass.control("productmanagement", req);
		
	}
	@ResponseBody
	@RequestMapping(value="/productInsert", method=RequestMethod.POST)
	public String productInsert(Product pro,Model model,HttpServletRequest req)
	{
		
		String insertQuery = "insert into products values(null,?,?,?,?,?,?,now())";
		try {
			PreparedStatement ps1 = new DB().pBaglan(insertQuery);
			ps1.setString(1, pro.getPname());
			ps1.setInt(2, pro.getPnumber());
			ps1.setInt(3, pro.getPcategory());
			ps1.setString(4, pro.getPdescription());
			ps1.setInt(5, pro.getPcompany());
			ps1.setFloat(6, pro.getPprice());
			int insertResult = ps1.executeUpdate();
			if(insertResult>0)
			{
				ResultSet rs1 = ps1.getGeneratedKeys();
				if(rs1.next())
				{
					int id = rs1.getInt(1);
					String singleNote = "select * from products where pid = ?";
					PreparedStatement ps2 = new DB().pBaglan(singleNote);
					ps2.setInt(1, id);
					ResultSet rs2 = ps2.executeQuery();
					if(rs2.next())
					{
						String row = " <tr role=\"row\" class=\"odd\">\r\n" + 
								"                  <td>"+rs2.getInt(1)+"</td>\r\n" + 
								"                  <td>"+rs2.getString(2)+"</td>\r\n" + 
								"                  <td>"+rs2.getInt(3)+"</td>\r\n" + 
								"                  <td>"+rs2.getInt(4)+"</td>\r\n" + 
								"                  <td>"+rs2.getString(5)+"</td>\r\n" + 
								"                  <td>"+rs2.getInt(6)+"</td>\r\n" + 
								"                  <td>"+rs2.getFloat(7)+"</td>\r\n" + 
								"                  \r\n" + 
								"                  <td>\r\n" + 
								"                  \r\n" + 
								"                  	<a href='<s:url value=\"/updateProduct/${item.pid}\"></s:url>'  class=\"btn btn-warning \"><i class=\"fa fa-edit\"></i>&emsp;Update</a>\r\n" + 
								"                  	\r\n" + 
								"                  \r\n" + 
								"                  </td>\r\n" + 
								"                  \r\n" + 
								"                  <td>\r\n" + 
								"                  <a onclick=\"deleteNote(${item.pid})\" type=\"button\" class=\"btn btn-danger\" href=\"#\"> <i class=\"fa fa_fw fa-trash\"></i>&emsp;Delete</a>\r\n" + 
								"                 \r\n" + 
								"                  </td>\r\n" + 
								"                </tr>";
						System.out.println(row);
					return row;
					}
				}
			}		
		} catch (Exception e) {
			System.out.println("insert error: "+e);
		}
		model.addAttribute("lst", dataResult());
		
		return UtilClass.control("redirect:/productmanagement", req);
	}
	@RequestMapping(value="/deleteProduct/{pid}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable String pid,HttpServletRequest req)
	{
		String deleteQuery = "delete from products where products.pid=?";
		try {
			PreparedStatement ps = new DB().pBaglan(deleteQuery);
			ps.setInt(1, Integer.valueOf(pid));
			int deleteResult = ps.executeUpdate();
		} catch (Exception e) {
			System.err.println("silme hatasý: "+e);
		}
		
		return UtilClass.control("redirect:/productmanagement", req);
	}
	
	public List<Product> dataResult()
	{
		List<Product> lst = new ArrayList<Product>();
		try {
			Session sesi = sf.getCurrentSession();
			Transaction tr = sesi.beginTransaction();
			lst = sesi.createQuery("from Product").list();
			tr.commit();
			sesi.close();
		
		
		} catch (Exception e) {
			System.out.println("data getirme hatasý: "+e);
		}
		return lst;
	}
	
	
}
