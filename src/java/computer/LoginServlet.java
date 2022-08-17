
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
						   throws ServletException, java.io.IOException {
		try {	    
			UserBean user = new UserBean();
			user.setUserName(request.getParameter("un"));
			user.setPassword(request.getParameter("pw"));

			user = UserDAO.login(user);
						
			if (user.isValid())
			{
				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentSessionUser",user); 
				response.sendRedirect("userLogged.jsp"); //logged-in page      		
			} else 
				response.sendRedirect("invalidLogin.jsp"); //error page 
		} 
		
		catch (Throwable theException) 	    
		{
			System.out.println(theException); 
		}
    }
}

public class UserBean {
	
    private String username;
    private String password;
    private String firstName;
	private String lastName;
	public boolean valid;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String newFirstName) {
		firstName = newFirstName;
	}

	public String getLastName() {
		return lastName;
	}
	public void setLastName(String newLastName) {
		lastName = newLastName;
	}
			

	public String getPassword() {
		return password;
	}
	public void setPassword(String newPassword) {
		password = newPassword;
	}
		
	public String getUsername() {
		return username;
	}
	public void setUserName(String newUsername) {
		username = newUsername;
	}

				
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean newValid) {
		valid = newValid;
	}	
}