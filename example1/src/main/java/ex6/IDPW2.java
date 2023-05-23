package ex6;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IDPW
 */
@WebServlet("/IDPW2")
public class IDPW2 extends HttpServlet {
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IDPW2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String filePath = "C:/Users/User/eclipse-workspaceJSP/example1/src/main/webapp/ex4/idpw.txt";
		
		boolean loginsg = false;
		try(BufferedReader reader = new BufferedReader(new FileReader(filePath))){
			String line;
			while((line = reader.readLine()) != null){
				
			String[] userData = line.split(",");
			if(userData.length == 2 && userData[0].equals(id) && userData[1].equals(password)){
				loginsg = true;
				break;
			}
			}
		} catch(Exception e){
			e.printStackTrace();
	}
		if(loginsg){
			session.setAttribute("id", id);
			response.sendRedirect("hw230523_2/main.jsp");
		} else{
			response.sendRedirect("hw230523_2/error.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	


}
