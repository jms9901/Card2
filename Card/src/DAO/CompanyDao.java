package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DTO.CompanyDto;

public class CompanyDao {
	
	// DAO : DB �젒洹� 媛앹껜

	private Connection conn; // DB �뿰寃� �씤�꽣�럹�씠�뒪
	private ResultSet rs; // SQL �떎�뻾 �썑 寃곌낵 �뿰寃� �씤�꽣�럹�씠�뒪

	public CompanyDao() {

			try {

				Class.forName("com.mysql.cj.jdbc.Driver"); // mysql �뱶�씪�씠踰� �뿰寃�

				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/card?serverTime=UTC", "root", "7624");
				
				System.out.println("�뿰�룞�꽦怨�");
			} catch (Exception e) {
				e.getMessage();
				e.getStackTrace();
			}
		}

	// �떎瑜� �겢�옒�뒪�뿉�꽌 DB �궗�슜�븯湲� �쐞�븳 媛앹껜 �꽑�뼵
	private static CompanyDao instance = new CompanyDao();

	// DB 媛앹껜 諛섑솚 �빐二쇰뒗 硫붿냼�뱶
	public static CompanyDao getinstance() {

		return instance;

	}
	
	// 移대뱶�궗 �벑濡� 硫붿냼�뱶
	public int companyadd(CompanyDto dto) {
		
		String sql = "insert into card_company values(?,?,?)";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getCard_company());
			pstmt.setString(2, dto.getCard_name());
			pstmt.setInt(3, dto.getCard_category());
			
			pstmt.executeUpdate();
			
			return 1;
			
		}catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return -1;
	}

}
