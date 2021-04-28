package jdbc;

public class loginn {
	private String phone;
	private String password;
	
	public loginn() {
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
	public loginn(String phone, String password) {
		super();
		this.phone = phone;
		this.password = password;
	}
	@Override
	public String toString() {
		return "loginn [phone=" + phone + ", password=" + password + "]";
	}
	
	
}
