package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the admin database table.
 * 
 */
@Entity
@Table(name = "admin")
@NamedQuery(name="Admin.findAll", query="SELECT a FROM Admin a")
public class Admin implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "aid")
	private int aid;
	
	@Column(name = "amail")
	private String amail;
	
	@Column(name = "aname")
	private String aname;
	
	@Column(name = "apassword")
	private String apassword;
	
	@Column(name = "asurname")
	private String asurname;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Admin() {
	}

	public int getAid() {
		return this.aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAmail() {
		return this.amail;
	}

	public void setAmail(String amail) {
		this.amail = amail;
	}

	public String getAname() {
		return this.aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getApassword() {
		return this.apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	public String getAsurname() {
		return this.asurname;
	}

	public void setAsurname(String asurname) {
		this.asurname = asurname;
	}

}