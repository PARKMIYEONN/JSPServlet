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
		System.out.println(id);
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setPhoneNo(phoneNo);
		vo.setBirthDay(birthday);
		
		String msg = "";
		String url = "";
		
		UserDAO dao = new UserDAO();
		if(dao.duplicateCheckId(id) == true) {
			
			msg = "이미 존재하는 아이디 입니다";
			url = "webLib/insertuser.do";
		} else {
			
			dao.insertUser(vo);
			msg = "가입 완료";
			url = "webLib/login.do";
		}
		
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
		
		
		
		return "/jsp/login/insertuserprocess.jsp";
	}	
	
}