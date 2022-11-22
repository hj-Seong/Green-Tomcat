package book;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utill.DatabaseUtill;

public class BookDAO {
	// addBook을 통해서 insert 쿼리문 작성
	public int addBook (String title, int count) {
		// SQL구문을 작성후
		String SQL = "insert into Book values (?,?)";
		
		// try-catch를 통해서 DB와 연결을 한다
		// > UserDAO 참고하여 작성
		try {
			Connection conn = DatabaseUtill.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, title);
			pstmt.setInt(2, count);
			return pstmt.executeUpdate(); // 성공했을 때 1반환
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return -1;
	}

}
