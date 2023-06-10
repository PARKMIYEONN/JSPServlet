package biz.rental;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.ConnectionFactory;

public class RentalDAO {
	
	public void rentBook(RentalVO vo) {
		StringBuilder sql = new StringBuilder();
		sql.append("insert into rental (rnt_no, id, b_no) values(seq_rental_no.nextval, ?, ?) ");
		
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, vo.getId());
			pstmt.setInt(2, vo.getBookNO());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void returnBook(int bookNO) {
		StringBuilder sql = new StringBuilder();
		sql.append("delete from rental where b_no = ?");
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
	
	public List<RentalVO> mybooks(String id) {
		
		List<RentalVO> rentalList = new ArrayList<>();
		RentalVO rental = null;
		StringBuilder sql = new StringBuilder();
		sql.append(" select a.b_no, b_title, b_writer, b_publisher, to_char(rnt_date,'yyyy-mm-dd')as rent_date, to_char((rnt_date + 14),'yyyy-mm-dd')as return_date ");
		sql.append(" from rental a join members b on b.id = a.id join books c on c.b_no = a.b_no ");
		sql.append(" where b.id = ? ");
		sql.append(" group by a.b_no, b_title, b_writer, b_publisher, rnt_date ");
		
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				rental = new RentalVO();
				rental.setBookNO(rs.getInt("b_no"));
				rental.setBookTitle(rs.getString("b_title"));
				rental.setBookWriter(rs.getString("b_writer"));
				rental.setBookPublisher(rs.getString("b_publisher"));
				rental.setRntDate(rs.getString("rent_date"));
				rental.setRtDate(rs.getString("return_date"));
				rentalList.add(rental);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rentalList;
	}
	
	public List<RentalVO> rentallist() {
		
		List<RentalVO> rentalList = new ArrayList<>();
		RentalVO rental = null;
		StringBuilder sql = new StringBuilder();
		sql.append(" select no, b.id, b.name, b.phone_no, a.b_no, b_title, b_writer, b_publisher, to_char(rnt_date,'yyyy-mm-dd')as rent_date, to_char((rnt_date + 14),'yyyy-mm-dd')as return_date ");
		sql.append(" from rental a join members b on b.id = a.id join books c on c.b_no = a.b_no ");
		sql.append(" group by no, b.id, b.name, b.phone_no, a.b_no, b_title, b_writer, b_publisher, rnt_date ");
		
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				rental = new RentalVO();
				rental.setNo(rs.getInt("no"));
				rental.setId(rs.getString("id"));
				rental.setName(rs.getString("name"));
				rental.setPhoneNo(rs.getString("phone_no"));				
				rental.setBookNO(rs.getInt("b_no"));
				rental.setBookTitle(rs.getString("b_title"));
				rental.setBookWriter(rs.getString("b_writer"));
				rental.setBookPublisher(rs.getString("b_publisher"));
				rental.setRntDate(rs.getString("rent_date"));
				rental.setRtDate(rs.getString("return_date"));
				rentalList.add(rental);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rentalList;
	}
	


}
