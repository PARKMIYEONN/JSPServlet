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
	         //request.setAttribute("loginUser", user);
	         session.setAttribute("loginUser", user);
	         msg = user.getName() + "�� ȯ���մϴ�";
	         url = "/webLib/main.do";
	      } else {
	         msg = "���̵� �Ǵ� �н����尡 �߸��Ǿ����ϴ�";
	         url = "/webLib/jsp/login/login.do";
	      }
	      
	      request.setAttribute("msg", msg);
	      request.setAttribute("url", url);
	      
	      return "/jsp/login/loginprocess.jsp";
	   }

}
