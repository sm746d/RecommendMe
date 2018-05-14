package edu.fullerton.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;

@Entity
@Table(name="userSignUp")
@Scope("session")
public class SignUpBean {
	
	@Id
	@Column(name="uId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long uId;
	
	@Column(name="fName")
	private String firstName="";
	@Column(name="lName")
	private String lastName ="";
	@Column(name="emailId")
	private String emailId ="";
	@Column(name="pwd")
	private String password ="";
	@Column(name="joinDate")
	private Date joiningDate;
	
	
	public long getuId() {
		return uId;
	}
	public void setuId(long uId) {
		this.uId = uId;
	}
	public Date getJoiningDate() {
		return joiningDate;
	}
	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
