package net.dhruvanand.login.registration;

public class LoginRegistration {

	
	private long id;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String role;
	
	
	
	
	public String getRole() {
		return role;
	}




	public void setRole(String role) {
		this.role = role;
	}




	public LoginRegistration(String firstName, String lastName, String email, String password) {
		super();
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public long getId() {
		return id;
	}




	public void setId(long id) {
		this.id = id;
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




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public LoginRegistration() {
		// TODO Auto-generated constructor stub
	}

}
