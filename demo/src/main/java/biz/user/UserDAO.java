package biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	private static String USER_INSERT="insert into users (id, password, name, role) " +
									"values (?, ?, ?, ?)";
	public void insertUser(UserVO vo) {
		try {
			conn = JDBCUtil
		} catch (Exception e) {
			
		}
	}
}
