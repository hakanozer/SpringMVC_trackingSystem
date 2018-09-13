package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the admin database table.
 * 
 */
@Entity
@NamedQuery(name="Admin.findAll", query="SELECT a FROM Admin a")
public class Admin implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int aid;

	private String amail;

	private String aname;

	private String apassword;

	private String asurname;

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