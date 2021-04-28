package jdbc;

public class Cart {

	
	private String phone;
	private String password;
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
	public Cart(String phone, String password) {
		super();
		this.phone = phone;
		this.password = password;
	}
	public Cart() {
		super();
	}
	@Override
	public String toString() {
		return "Cart [phone=" + phone + ", password=" + password + "]";
	}
	
}
