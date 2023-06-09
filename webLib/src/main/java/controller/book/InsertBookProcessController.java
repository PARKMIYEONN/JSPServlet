package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class InsertBookProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String bookTitle = request.getParameter("title");
		String bookWriter = request.getParameter("writer");
		String bookPublisher = request.getParameter("publisher");
		
		BookVO vo = new BookVO();
		vo.setBookTitle(bookTitle);
		vo.setBookWriter(bookWriter);
		vo.setBookPublisher(bookPublisher);
		
		BookDAO dao = new BookDAO();
		dao.insertBook(vo);
		return "/jsp/book/insertbook.jsp";
	}
	
}
