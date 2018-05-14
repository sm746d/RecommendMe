package edu.fullerton.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User 
{
	
	@Id
	@Column(name="uId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long uId;
	
	@Column(name="first_name")
	private String firstName="";
	@Column(name="last_name")
	private String lastName ="";
	@Column(name="email_id")
	private String emailId ="";
	@Column(name="pwd")
	private String password ="";
	@Column(name="created_date")
	private Date joiningDate;
	private String gender;
	private String address;
	
	@Column(name="phone_num")
	private String phoneNum;
	
	public String getGender() {
		return this.gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getPhoneNum() {
		return this.phoneNum;
	}
	
	public void setPhoneNum(String phone) {
		this.phoneNum = phone;
	}
	
	public String getAddress() {
		return this.address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
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