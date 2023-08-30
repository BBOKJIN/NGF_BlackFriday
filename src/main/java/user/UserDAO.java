package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs; 
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/BBS";
			String dbID = "root";
			String dbPassword = "9870";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean isCouponCodeExists(String couponCode) {
	    String SQL = "SELECT COUNT(*) FROM coupons WHERE couponCode = ?";
	    try {
	        PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, couponCode);
	        ResultSet rs = pstmt.executeQuery();
	        rs.next();
	        int count = rs.getInt(1);
	        return count > 0; // 쿠폰 코드가 이미 존재하면 true, 아니면 false 반환
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false; // 예외 발생 시 기본적으로 중복이 아닌 것으로 처리
	    }
	}
	
	public void setCoupon(String userID, String couponCode, String partedTime) {
	    String SQL = "INSERT INTO coupons (userID, couponCode, partedTime) VALUES (?, ?, ?)";
	    try {

	        pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, userID);
	        pstmt.setString(2, couponCode);
	        pstmt.setString(3, partedTime);
	        pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public void addFlag(int flag) {
	    String SQL = "UPDATE flag SET num = ? WHERE id = ?";
	    try {
	        pstmt = conn.prepareStatement(SQL);
	        pstmt.setInt(1, flag);
	        pstmt.setInt(2, 0); // id 값으로 무엇을 설정해야 하는지에 따라 수정 필요
	        pstmt.executeUpdate(); // executeUpdate를 사용하여 업데이트 쿼리 실행
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public String getEmail(String userID) {
		String SQL = "SELECT userEmail FROM user WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getString(1);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}
	
	public int getFlag() {
		String SQL = "SELECT num FROM flag WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, 0);
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return 0;
	}
	
	public String getID(String userEmail) {
		String SQL = "SELECT userID FROM USER WHERE userEmail = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userEmail);
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getString(1);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return "Unknown";
	}
	
	public int login(String userEmail, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userEmail = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userEmail);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword))
					
					return 1; //로그인 성공
				else
					return 0; // 비밀번호 틀림
			}
			return -1; // 아이디 없음 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -2; //DB 오류 
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); // 0이상 값이 return된 경우 성공 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -1; //DB 오류 
	}
}