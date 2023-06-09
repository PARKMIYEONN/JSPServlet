package biz.book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.ConnectionFactory;

public class BookDAO {
	
	
	public void returnCheck(int bookNO) {
		StringBuilder sql = new StringBuilder();
		sql.append("update books set rented_book = 0 where b_no = ?");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setInt(1, bookNO);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void rentCheck(int bookNO) {
		StringBuilder sql = new StringBuilder();
		sql.append("update books set rented_book = 1 where b_no = ?");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
				pstmt.setInt(1, bookNO);
				pstmt.executeUpdate();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<BookVO> allBooks(){
		List<BookVO> bookList = new ArrayList<>();
		BookVO book = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select * from books order by b_no");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				book = new BookVO();
				book.setBookNO(rs.getInt("b_no"));
				book.setBookTitle(rs.getString("b_title"));
				book.setBookWriter(rs.getString("b_writer"));
				book.setBookPublisher(rs.getString("b_publisher"));
				book.setRented_book(rs.getInt("rented_book"));
				
				bookList.add(book);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookList;
	}
	
	public List<BookVO> selectByAll(String bookinfo) {
		List<BookVO> bookList = new ArrayList<>();
		BookVO book = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select instr((b_no || b_title || b_writer || b_publisher), ?)as bookh");
		sql.append(" , b_no, b_title, b_writer, b_publisher, rented_book");
		sql.append(" from books");
		sql.append(" where instr((b_no || b_title || b_writer || b_publisher), ?) != 0");
		sql.append(" order by b_no");	
		try (
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1 , bookinfo);
			pstmt.setString(2 , bookinfo);
			
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				book = new BookVO();
				book.setBookNO(rs.getInt("b_no"));
				book.setBookTitle(rs.getString("b_title"));
				book.setBookWriter(rs.getString("b_writer"));
				book.setBookPublisher(rs.getString("b_publisher"));
				book.setRented_book(rs.getInt("rented_book"));
				
				bookList.add(book);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookList;
	}
	
	public void insertBook(BookVO book) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO books (B_no, b_title, b_writer, b_publisher) VALUES (SEQ_BOOKS_NO.nextval, ?, ?, ?)");
		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());){
			pstmt.setString(1, book.getBookTitle());
			pstmt.setString(2, book.getBookWriter());
			pstmt.setString(3, book.getBookPublisher());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
				
	}
	
	public void deleteBook(BookVO book) {
		StringBuilder sql = new StringBuilder();
		sql.append("delete from books where b_no = ?");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setInt(1, book.getBookNO());
			pstmt.executeUpdate();	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
