package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class LoginProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO dao = new UserDAO();
		UserVO user = dao.loginUser(vo);
		
	      String msg = "";
	      String url = "";
	      if(user != null) {
	         session.setAttribute("loginUser", user);
	         msg = user.getName() + "님 환영합니다";
	         url = "/webLib/main.do";
	      } else {
	      
	         msg = "아이디와 패스워드를 확인해주세요";
	         url = "/webLib/jsp/login/login.do";
	      }
	      
	      request.setAttribute("msg", msg);
	      request.setAttribute("url", url);
	      
	      return "/jsp/login/loginprocess.jsp";
	   }

}
