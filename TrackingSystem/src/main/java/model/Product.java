package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the products database table.
 * 
 */
@Entity
@Table(name="products")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int pid;

	private int pcategory;

	private int pcompany;

	@Temporal(TemporalType.TIMESTAMP)
	private Date pdatetime;

	@Lob
	private String pdescription;

	private String pname;

	private int pnumber;

	private float pprice;

	public Product() {
	}

	public int getPid() {
		return this.pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getPcategory() {
		return this.pcategory;
	}

	public void setPcategory(int pcategory) {
		this.pcategory = pcategory;
	}

	public int getPcompany() {
		return this.pcompany;
	}

	public void setPcompany(int pcompany) {
		this.pcompany = pcompany;
	}

	public Date getPdatetime() {
		return this.pdatetime;
	}

	public void setPdatetime(Date pdatetime) {
		this.pdatetime = pdatetime;
	}

	public String getPdescription() {
		return this.pdescription;
	}

	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPnumber() {
		return this.pnumber;
	}

	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}

	public float getPprice() {
		return this.pprice;
	}

	public void setPprice(float pprice) {
		this.pprice = pprice;
	}

}