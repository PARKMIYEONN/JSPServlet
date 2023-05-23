package ex6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculatorCookie
 */
@WebServlet("/CalculatorCookie")
public class CalculatorCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculatorCookie() {
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
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(!cookie.getName().equals("count")) {
					out.println(cookie.getValue() + "<br>");	
				}
				
			}
		}
		
		out.println("<form method = 'post' action = 'CalculatorCookie'>");
		out.println("first number <input type = 'text' name = 'num1'/><br>");
		out.println("second number <input type = 'text' name = 'num2'/><br>");
		out.println("¿¬»êÀÚ");
		out.println("<button type='submit' name = 'cal' value='+'>+</button>");
		out.println("<button type='submit' name = 'cal' value='-'>-</button>");
		out.println("<button type='submit' name = 'cal' value='*'>*</button>");
		out.println("<button type='submit' name = 'cal' value='/'>/</button>");
		out.println("</form>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		String cal = request.getParameter("cal");
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int wan = 0;
		
		switch(cal) {
		case "+":
			wan = num1 + num2;
			break;
		case "-":
			wan = num1 - num2;
			break;
		case "*":
			wan = num1 * num2;
			break;
		case "/":
			wan = num1 / num2;
			break;
			
		}
		
		int cnt = 0;
		Cookie[] cookies = request.getCookies();
		for(int i = 0; cookies != null && i < cookies.length; i++) {
			if(cookies[i].getName().equals("count")) {
				cnt = Integer.parseInt(cookies[i].getValue());
				break;
			}
		}
		
		String number1 = Integer.toString(num1);
		String number2 = Integer.toString(num2);
		String wann = Integer.toString(wan);
		String jeon = number1 + cal + number2 + "=" + wann;
		
		Cookie c1 = new Cookie(cnt++ + "", jeon);
		Cookie cntCookie = new Cookie("count", cnt + ""); 
	
		
		response.addCookie(c1);
		response.addCookie(cntCookie);
		response.sendRedirect("CalculatorCookie");
		
	}

}
