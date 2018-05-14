package edu.fullerton.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="recommendStatusMaster")
public class RecoStatusMasterBean {
	
	@Id
	@Column(name="statusId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int statusId;
	
	
	@Column(name="statusName")
	private String statusName="";
	
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}


}
