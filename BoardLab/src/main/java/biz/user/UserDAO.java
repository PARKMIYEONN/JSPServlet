package biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import biz.common.JDBCUtil;

public class UserDAO {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	private static String USER_INSERT="insert into users (id, password, name, role) " +
									"values (?, ?, ?, ?)";
	public void insertUser(UserVO vo) {
	
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_INSERT);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPassword());
			stmt.setString(3, vo.getName());
			stmt.setString(4, vo.getRole());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	private static String USER_GET="select * from users where id = ? and password = ?";
			
	
	public UserVO getUser(UserVO vo) {
		UserVO user = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPassword());
			rs = stmt.executeQuery();
			if(rs.next()) {
				user = new UserVO();
				user.setId(rs.getString("ID"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setName(rs.getString("NAME"));
				user.setRole(rs.getString("ROLE"));
			}
		} catch (Exception e) {

		}finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return user;
	}
	
//	public List<UserVO> checkUser(UserVO vo) {
//		List<UserVO> userList = new ArrayList<>();
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement("select id, password from users where id = ? ");
//			stmt.setString(1, vo.getId());
//			ResultSet rs = stmt.executeQuery();
//			while(rs.next()) {
//				String id = rs.getString("id");
//				String password = rs.getString("password");
//				
//				UserVO member = new UserVO(id, password);
//				userList.add(member);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return userList;
//	}
}
