package metier.entities;

import java.io.Serializable;

public class User implements Serializable {
	private int id_user;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String company;
	private String address;

	
	public User( String username, String password, String email, String phone, String company,
			String address) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.company = company;
		this.address = address;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getUser_id() {
		return id_user;
	}

	public void setUser_id(int id_user) {
		this.id_user = id_user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAddress() {
		return address;
	}

	public void setAdrres(String address) {
		this.address = address;
	}
	
}
