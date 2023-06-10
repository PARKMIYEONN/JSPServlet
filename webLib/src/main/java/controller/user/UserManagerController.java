package controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.rental.RentalDAO;
import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class UserManagerController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		UserDAO dao = new UserDAO();
		List<UserVO> user = dao.allUsers();
		request.setAttribute("users", user);

		return "/jsp/manager/allusers.jsp";
	}
	
}
