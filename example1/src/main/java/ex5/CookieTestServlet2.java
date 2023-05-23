package ex5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieTestServlet2
 */
@WebServlet("/CookieTestServlet2")
public class CookieTestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieTestServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//입력 출력 인코딩 디코딩 문자셋 출력
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		
		// 출력 HTML 파일 만들기 위한 out인스턴스 설정
		PrintWriter out = response.getWriter();
		
		//브라우저로부터 쿠키 가져오기
		Cookie[] cookies = request.getCookies();
		
		// 쿠키가 있는지 확인
		if(cookies != null) {
			
			for(Cookie cookie : cookies) {
				// 출력
				out.println("cookie : " + cookie.getName() + ":" + cookie.getValue() + "<br/>");
			}
		}
		
		// name과 value입력받는 html 폼 생성
		out.println("<form method='post' action= 'CookieTestServlet2'>");	//폼을 제출할 떄 post타입으로 제출 따라서 다시 실행될 때 두 겟이 아니라 두 포스트가 실행이 됨
		out.println("name<input type='text' name = 'name'/>");
		out.println("value<input type='text' name = 'value'/>");
		out.println("<input type='submit'/>");
		out.println("</form>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 폼에서 post로 요청이 오면
		// request에서 name, value를 추출
		String name = request.getParameter("name");
		String value = request.getParameter("value");
		
		// 쿠키로 저장
		Cookie c = new Cookie(name, value);
		response.addCookie(c);
		
		// 서블릿을 doGet으로 리다이렉션 시키는 것.
		response.sendRedirect("CookieTestServlet2");
		
	}

}
