package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class InsertUserProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phoneNo = request.getParameter("phone");
		String birthday = request.getParameter("birthday");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setPhoneNo(phoneNo);
		vo.setBirthDay(birthday);
		
		UserDAO dao = new UserDAO();
		dao.insertUser(vo);
		
		
		
		return "/jsp/login/login.jsp";
	}	
	
}