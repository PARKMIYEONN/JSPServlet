package biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.ConnectionFactory;

public class UserDAO {

	public void insertUser(UserVO member) { // 회원 등록

		StringBuilder sql = new StringBuilder();
		sql.append(
				"insert into members(no, id, password, name, phone_no, birthday) values(seq_members_no.nextval,?,?,?,?,to_date(?,'yyyymmdd')) ");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhoneNo());
			pstmt.setString(5, member.getBirthDay());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(UserVO vo) {
		StringBuilder sql = new StringBuilder();
		sql.append("delete from members where id = ? and password = ?");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void updateInfo(UserVO vo) {
		StringBuilder sql = new StringBuilder();
		sql.append("update members set password = ?, name = ?, phone_no = ? where id = ?");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			pstmt.setString(1, vo.getPassword());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPhoneNo());
			pstmt.setString(4, vo.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		

	public UserVO loginUser(UserVO vo) { 
		
		UserVO user = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select no, id, password, name, phone_no, to_char(birthday, 'yyyy-mm-dd')as birthday from members where id = ? and password = ?");

		try (Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());) {

			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());

			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new UserVO();
				user.setNo(rs.getInt("no"));
				user.setId(rs.getString("ID"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setName(rs.getString("NAME"));
				user.setPhoneNo(rs.getString("PHONE_NO"));
				user.setBirthDay(rs.getString("BIRTHDAY"));
			}

		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return user;
	}
	
	public List<UserVO> allUsers(){
		List<UserVO> userList = new ArrayList<>();
		UserVO user = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select no, name, phone_no, to_char(birthday, 'yyyy-mm-dd')as birthday from members where no != 1 order by no ");
		try (
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
				){
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				user = new UserVO();
				user.setNo(rs.getInt("no"));
				user.setName(rs.getString("name"));
				user.setPhoneNo(rs.getString("phone_no"));
				user.setBirthDay(rs.getString("birthday"));
				
				userList.add(user);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}
	

}
