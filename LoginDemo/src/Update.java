

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mobile =request.getParameter("mobile");
		String password =request.getParameter("password");		
		String name=request.getParameter("name");
		String nickname=request.getParameter("nickname");
		String gender=request.getParameter("gender");
		int birthday=Integer.parseInt(request.getParameter("birthday"));
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		
		Member member = new Member(mobile,password,name,nickname,gender,birthday,email,address);
		UpdateDao.update(member) ;		
		response.getWriter().print(result);
	}

}
