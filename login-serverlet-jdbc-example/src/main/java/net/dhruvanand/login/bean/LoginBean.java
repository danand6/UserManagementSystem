package net.dhruvanand.login.bean;

import java.io.Serializable;

public class LoginBean implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private String username;
	
	private String password;
	
	private String firstName;
	
	private String lastName;
	
	private int id;
	
	private String role;
	
	
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

	

	public long getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public LoginBean() {
		// TODO Auto-generated constructor stub
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
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
	
	
	

}
