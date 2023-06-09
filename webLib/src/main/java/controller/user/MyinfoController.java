package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.book.BookVO;
import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class MyinfoController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO)session.getAttribute("loginUser");
		String id = uvo.getId();
		String password = uvo.getPassword();
		
		
		System.out.println(id);
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO dao = new UserDAO();
		UserVO user = dao.loginUser(vo);
		
		request.setAttribute("user", user);
		
		
		return "/jsp/mypage/myinfo.jsp";
	}

	
}
