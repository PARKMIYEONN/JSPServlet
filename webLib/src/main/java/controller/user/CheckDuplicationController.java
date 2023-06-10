package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.user.UserDAO;
import controller.Controller;

public class CheckDuplicationController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		UserDAO dao = new UserDAO();
		boolean isDuplicate = dao.duplicateCheckId(id);

		String msg = "";
		if (isDuplicate) {
			msg = "duplicate";
		} else {
			msg = "success";
		}

		request.setAttribute("msg", msg);
		return "/jsp/login/checkduplication.jsp";
	}

	
}
