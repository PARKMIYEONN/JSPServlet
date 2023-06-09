package controller.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class DeleteBookController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		int bookNO = Integer.parseInt(request.getParameter("bookNO"));
		
		BookVO book = new BookVO();
		book.setBookNO(bookNO);
		
		BookDAO dao = new BookDAO();
		dao.deleteBook(book);
		
		String msg = "도서 삭제 완료";
		String url = "/webLib/jsp/book/booklist.do";
		
		 request.setAttribute("msg", msg);
	     request.setAttribute("url", url);
	     
		return "/jsp/book/deletebookprocess.jsp";
	}
	
	
	
}
