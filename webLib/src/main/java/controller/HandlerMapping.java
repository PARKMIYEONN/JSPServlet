package controller;

import java.util.HashMap;
import java.util.Map;

import controller.book.BookListController;
import controller.book.BookSearchController;
import controller.book.BookSearchProcessController;
import controller.book.DeleteBookController;
import controller.book.InsertBookController;
import controller.book.InsertBookProcessController;
import controller.book.MyBooksController;
import controller.rental.RentBookController;
import controller.rental.ReturnBookController;
import controller.user.DeleteUserController;
import controller.user.DeleteUserProcessController;
import controller.user.InsertUserController;
import controller.user.InsertUserProcessController;
import controller.user.LoginController;
import controller.user.LoginProcessController;
import controller.user.LogoutController;
import controller.user.MyPageController;
import controller.user.MyinfoController;
import controller.user.UpdateInfoController;
import controller.user.UpdateInfoProcessController;

public class HandlerMapping {
	private Map<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/insertuser.do", new InsertUserController());
		mappings.put("/insertuserProcess.do", new InsertUserProcessController());
		mappings.put("/login.do", new LoginController());
		mappings.put("/loginProcess.do", new LoginProcessController());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/booksearch.do", new BookSearchController());
		mappings.put("/booksearchprocess.do", new BookSearchProcessController());
		mappings.put("/insertbook.do", new InsertBookController());
		mappings.put("/insertbookprocess.do", new InsertBookProcessController());
		mappings.put("/booklist.do", new BookListController());
		mappings.put("/rentbook.do", new RentBookController());
		mappings.put("/deletebook.do", new DeleteBookController());
		mappings.put("/returnbook.do", new ReturnBookController());
		mappings.put("/deleteuserprocess.do", new DeleteUserProcessController());
		mappings.put("/deleteuser.do", new DeleteUserController());
		mappings.put("/updateinfo.do", new UpdateInfoController());
		mappings.put("/updateinfoprocess.do", new UpdateInfoProcessController());
		mappings.put("/mypage.do", new MyPageController());
		mappings.put("/myinfo.do", new MyinfoController());
		mappings.put("/mybooks.do", new MyBooksController());
	}
	
	public Controller getController(String path) {
		System.out.println(path);
		return mappings.get(path);
	}
}
