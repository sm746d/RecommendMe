package edu.fullerton.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="recommendData")
public class RecommenderBean {
	
	@Id
	@Column(name="recoId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long recoId;
	@Column(name="firstName")
	private String firstName ="";
	@Column(name="lastName")
	private String lastName ="";
	@Column(name="emailId")
	private String emailId ="";
	@Column(name="recoContent")
	private String recoContent ="";
	@Column(name="companyName")
	private String companyName ="";
	@Column(name="designation")
	private String designation ="";
	@Column(name="recommendDate")
	private Date recommendDate;
	@Column(name="recoCell")
	private String recoCell ="";
	@Column(name="uId")
	private long uId;
	@Transient
	private long token;
	
	public long getToken() {
		return token;
	}
	public void setToken(long token) {
		this.token = token;
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
	public String getRecoContent() {
		return recoContent;
	}
	public void setRecoContent(String recoContent) {
		this.recoContent = recoContent;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getRecoCell() {
		return recoCell;
	}
	public void setRecoCell(String recoCell) {
		this.recoCell = recoCell;
	}
	public long getuId() {
		return uId;
	}
	public void setuId(long uId) {
		this.uId = uId;
	}
	public long getRecoId() {
		return recoId;
	}
	public Date getRecommendDate() {
		return recommendDate;
	}
	public void setRecommendDate(Date recommendDate) {
		this.recommendDate = recommendDate;
	}
}
