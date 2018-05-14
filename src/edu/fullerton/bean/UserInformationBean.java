package edu.fullerton.bean;

import org.json.JSONObject;

public class UserInformationBean {
	//Basic Details Information
	private String firstName="";
	private String lastName="";
	private String street="";
	private String city="";
	private String state="";
	private String country="";
	private long pinCode=0;
	private long phoneNumber;
	private String gender="M";
	//Basic Details Information
	private JSONObject workExpJson;
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
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
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public long getPinCode() {
		return pinCode;
	}
	public void setPinCode(long pinCode) {
		this.pinCode = pinCode;
	}
	public JSONObject getWorkExpJson() {
		return workExpJson;
	}
	public void setWorkExpJson(JSONObject workExpJson) {
		this.workExpJson = workExpJson;
	}
	

}
