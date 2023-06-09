package controller.rental;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.book.BookDAO;
import biz.rental.RentalDAO;
import biz.rental.RentalVO;
import biz.user.UserVO;
import controller.Controller;

public class RentBookController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		int bookNO = Integer.parseInt(request.getParameter("bookNO"));
		
		BookDAO dao = new BookDAO();
		dao.rentCheck(bookNO);
		
		RentalVO book = new RentalVO();
		book.setBookNO(bookNO);
		book.setId(id);
		
		RentalDAO rdao = new RentalDAO();
		rdao.rentBook(book);
		String msg = "대출 완료";
		String url = "/webLib/jsp/book/booklist.do";
		
		 request.setAttribute("msg", msg);
	     request.setAttribute("url", url);
		
		return "/jsp/book/rentbookprocess.jsp";
	}
	
}
