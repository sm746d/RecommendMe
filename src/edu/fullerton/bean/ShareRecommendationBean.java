package edu.fullerton.bean;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

public class ShareRecommendationBean {

	private long rId;
	private String fName ="";
	private String lName ="";
	private long token;
	private Date shareDate;
	private long uId;
	private String shareStatus="";
	private String email="";
	
	private List<ShareRecommendationBean> statusList = new ArrayList<ShareRecommendationBean>();
	
	@Transient
	public List<ShareRecommendationBean> getStatusList() {
		return statusList;
	}
	public void setStatusList(List<ShareRecommendationBean> statusList) {
		this.statusList = statusList;
	}
	
	@Column(name="shareDate")
	public Date getShareDate() {
		return shareDate;
	}
	public void setShareDate(Date shareDate) {
		this.shareDate = shareDate;
	}
	
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="shareStatus")
	public String getShareStatus() {
		return shareStatus;
	}
	public void setShareStatus(String shareStatus) {
		this.shareStatus = shareStatus;
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
	
}
