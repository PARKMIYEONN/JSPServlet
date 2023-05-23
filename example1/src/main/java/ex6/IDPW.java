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

/**
 * Servlet implementation class IDPW
 */
@WebServlet("/IDPW")
public class IDPW extends HttpServlet {
	
	private static final String FILE_PATH = "C:/Users/User/eclipse-workspaceJSP/example1/src/main/webapp/ex4/idpw.txt";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IDPW() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
	     PrintWriter out = response.getWriter();
		
		out.println("<form method='get' action='/example1/IDPW'>");
		out.println("<br> id : ");
		out.println("<input type='text' name='id'/><br>");
		out.println("<br> pw : ");
		out.println("<input type='password' name='pw'/><br>");
		out.println("<input type='submit' value='로그인' /></form>");
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(jeojangIDPW(id, pw)) {
			out.println("로그인 완료<br>");
		} else if(id == null && pw == null) {
		} else {
			out.println("아이디 또는 비밀번호가 올바르지 않습니다");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private boolean jeojangIDPW(String id, String pw) throws IOException{
		BufferedReader br = new BufferedReader((new FileReader(FILE_PATH)));
		String info;
		
		while((info = br.readLine()) != null) {
			System.out.println(info);
			String[] parts = info.split(",");
			String jeojangid = parts[0];
			String jeojangpw = parts[1];
			
			if(jeojangid.equals(id) && jeojangpw.equals(pw)) {
				br.close();
				return true;
			}
		}
		br.close();
		return false;
	}

}
