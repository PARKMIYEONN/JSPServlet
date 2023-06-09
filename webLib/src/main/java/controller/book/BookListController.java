package controller.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class BookListController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		BookDAO dao = new BookDAO();
		List<BookVO> sbook = dao.allBooks();
		request.setAttribute("sbook", sbook);
		
		return "/jsp/book/booklist.jsp";
	}
	
		
}
