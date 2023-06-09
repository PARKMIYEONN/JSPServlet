package controller.rental;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.rental.RentalDAO;
import controller.Controller;

public class ReturnBookController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		int bookNO = Integer.parseInt(request.getParameter("bookNO"));
		
		BookDAO bdao = new BookDAO();
		bdao.returnCheck(bookNO);
		
		RentalDAO dao = new RentalDAO();
		dao.returnBook(bookNO);
		
		String msg = "¹Ý³³ ¿Ï·á";
		String url = "/webLib/jsp/mypage/mybooks.do";
		
		 request.setAttribute("msg", msg);
	     request.setAttribute("url", url);
		
		return "/jsp/book/returnbookprocess.jsp";
	}

}
