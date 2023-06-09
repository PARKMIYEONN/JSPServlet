package controller.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.rental.RentalDAO;
import biz.rental.RentalVO;
import biz.user.UserVO;
import controller.Controller;

public class MyBooksController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		UserVO snUser = (UserVO)session.getAttribute("loginUser");
		
		String id = snUser.getId();
		
		RentalDAO dao = new RentalDAO();
		List<RentalVO> rvo = dao.mybooks(id);
		
		request.setAttribute("mybooks", rvo);
		
		
		
		return "/jsp/mypage/mybooks.jsp";
	}
	
}
