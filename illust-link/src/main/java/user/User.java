package user;

public class User {
	private String userEmailAdress = "";
	private String userPassword = "";
	
	
	public void setUserEmailAdress(String userEmailAdress) {
		this.userEmailAdress = userEmailAdress;
	}
	public String getUserEmailAdress() {
		return userEmailAdress;
	}
	
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserPassword() {
		return userPassword;
	}
}
