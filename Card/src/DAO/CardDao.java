package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.CardDto;

public class CardDao {

	// DAO : DB �젒洹� 媛앹껜

	private Connection conn; // DB �뿰寃� �씤�꽣�럹�씠�뒪
	private ResultSet rs; // SQL �떎�뻾 �썑 寃곌낵 �뿰寃� �씤�꽣�럹�씠�뒪

	public CardDao() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver"); // mysql �뱶�씪�씠踰� �뿰寃�

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/card?serverTime=UTC", "root", "1234");

		} catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
	}

	// �떎瑜� �겢�옒�뒪�뿉�꽌 DB �궗�슜�븯湲� �쐞�븳 媛앹껜 �꽑�뼵
	private static CardDao instance = new CardDao();

	// DB 媛앹껜 諛섑솚 �빐二쇰뒗 硫붿냼�뱶
	public static CardDao getinstance() {

		return instance;

	}

	// 카드 추가
	public int cardadd(CardDto dto) {

		String sql = "insert into card(card_name, card_company, membership_fee, images, bank_link, card_category, card_benefit, recommendation)"
				+ "values(?,?,?,?,?,?,?,?)";

		try {

			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getCard_name());
			pstmt.setString(2, dto.getCard_company());
			pstmt.setInt(3, dto.getMembership_fee());
			pstmt.setString(4, dto.getImages());
			pstmt.setString(5, dto.getBank_link());
			pstmt.setString(6, dto.getCard_category());
			pstmt.setString(7, dto.getCard_benefit());
			
			pstmt.setInt(8, 0);

			pstmt.executeUpdate();

			return 1;

		} catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return -1;
	}

	// 모든 카드 조회
	public ArrayList<CardDto> cardlist() {

		String sql = "select * from card";

		ArrayList<CardDto> list = new ArrayList<CardDto>();

		try {

			PreparedStatement pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				CardDto dto = new CardDto(
						rs.getString(2),
						rs.getString(3),
						rs.getInt(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return list;
	}
	
	// 카드 개별 조회 메소드
	public CardDto getcard(String card_name) {
		
		String sql = "select * from card where card_name=?";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, card_name);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				CardDto dto = new CardDto(
						rs.getString(2),
						rs.getString(3),
						rs.getInt(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9));
				
				return dto;
				
			}
			
		}catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return null;
	}
	
	// 카드 수정 메소드
	public int cardmodify(CardDto dto , String card_name2) {
		
		String sql = "update card set card_name=?, card_company=?, membership_fee=?, images=?, bank_link=?,  card_category=?, card_benefit=? where card_name=?";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getCard_name());
			pstmt.setString(2, dto.getCard_company());
			pstmt.setInt(3, dto.getMembership_fee());
			pstmt.setString(4, dto.getImages());
			pstmt.setString(5, dto.getBank_link());
			pstmt.setString(6, dto.getCard_category());
			pstmt.setString(7, dto.getCard_benefit());
			pstmt.setString(8, card_name2);
			
			pstmt.executeUpdate();
			
			return 1;
			
		}catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return -1;
	}
	
	// 카드 삭제 메소드
	public int deletecard(String card_name) {
		
		String sql = "delete from card where card_name=?";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, card_name);
			
			pstmt.executeUpdate();
			
			return 1;
			
		}catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return -1;
	}
	

	public ArrayList<CardDto> cardcompanylist(String company) {

		ArrayList<CardDto> list = new ArrayList<CardDto>();

		String sql = "select * from card where card_company=?";

		try {

			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, company);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				CardDto dto = new CardDto(rs.getString(2), rs.getString(3), rs.getInt(5), rs.getString(6),
						rs.getString(7), rs.getString(8), rs.getString(9));

				list.add(dto);
			}
			return list;

		} catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return list;
	}
	
	// 카드 클릭시 추천 +1
	public void click(String link) {
		
		String sql = "update card set recommendation = recommendation + 1 where bank_link = ?";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, link);
			
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	// 카드 조회 추천수 높은거부터
	public ArrayList<CardDto> cardranking() {

		String sql = "select * from card order by recommendation desc";

		ArrayList<CardDto> list = new ArrayList<CardDto>();

		try {

			PreparedStatement pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				CardDto dto = new CardDto(
						rs.getString(2),
						rs.getString(3),
						rs.getInt(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return list;
	}

}
