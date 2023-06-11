package controller.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.book.BookDAO;
import biz.book.BookVO;
import biz.user.UserDAO;
import controller.Controller;

public class BookSearchProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String book = request.getParameter("title");
		String option = request.getParameter("searchBy");
		
		BookDAO dao = new BookDAO();
		List<BookVO> sbook = dao.searchBooks(option, book);
		
			request.setAttribute("sbook", sbook);
		
		return "/jsp/book/booksearch.jsp";
		
	}

	
	
}
