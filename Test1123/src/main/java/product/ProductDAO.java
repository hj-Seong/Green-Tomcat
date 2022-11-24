package product;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utill.DatabaseUtill;

public class ProductDAO {
	//데이터베이스에 값을 넣어줄 쿼리문 작성
	public int addProduct(String name, int count){
		//SQL구문 작성
		String SQL = "insert into product values (?,?)";
		try {
			Connection conn = DatabaseUtill.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			pstmt.setInt(2, count);
			//executeUpdate를 사용해서 db에 쿼리문 실행
			return pstmt.executeUpdate(); //성공 : 1, 쿼리문오류 : 0
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
}
