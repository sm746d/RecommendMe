package edu.fullerton.bean;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="recommendStatus")
public class RecommendStatusBean {


	private long rId;
	private String fName ="";
	private String lName ="";
	private long token;
	private Date recoDate;
	private long uId;
	private String recoStatus="";
	private String email="";
	
	private List<RecommendStatusBean> statusList = new ArrayList<RecommendStatusBean>();
	
	@Transient
	public List<RecommendStatusBean> getStatusList() {
		return statusList;
	}
	public void setStatusList(List<RecommendStatusBean> statusList) {
		this.statusList = statusList;
	}
	
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="recoStatus")
	public String getRecoStatus() {
		return recoStatus;
	}
	public void setRecoStatus(String recoStatus) {
		this.recoStatus = recoStatus;
	}
	@Column(name="uId")
	public long getuId() {
		return uId;
	}
	public void setuId(long uId) {
		this.uId = uId;
	}
	
	@Id
	@Column(name="rId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public long getrId() {
		return rId;
	}
	public void setrId(long rId) {
		this.rId = rId;
	}

	@Column(name="fName")
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	@Column(name="lName")
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	@Column(name="token")
	public long getToken() {
		return token;
	}
	public void setToken(long token) {
		this.token = token;
	}
	@Column(name="recoDate")
	public Date getRecoDate() {
		return recoDate;
	}
	public void setRecoDate(Date recoDate) {
		this.recoDate = recoDate;
	}

}
