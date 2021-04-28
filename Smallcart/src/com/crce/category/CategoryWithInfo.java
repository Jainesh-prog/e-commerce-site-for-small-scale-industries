package com.crce.category;

public class CategoryWithInfo {

	private String phone;
	private String password;
	private String c_name;
	public CategoryWithInfo(String phone, String password, String c_name) {
		super();
		this.phone = phone;
		this.password = password;
		this.c_name = c_name;
	}
	public CategoryWithInfo() {
		super();
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	@Override
	public String toString() {
		return "CategoryWithInfo [phone=" + phone + ", password=" + password + ", c_name=" + c_name + "]";
	}
	
	
}
