package webapp.login;

public class LoginService {

	public boolean isUserValid(String user, String password) {
		return user.equalsIgnoreCase("kendo") && password.equals("1234");
	}
}
