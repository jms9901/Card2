package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.MemberDto;

public class MemberDao {
	
	private Connection conn;
	private ResultSet rs; 
	
	public MemberDao() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/card?serverTimezone=UTC", "root" , "1234" );
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//  dao ��ü ���� 
	private static MemberDao instance = new MemberDao();
	
	// dao ��ü ��ȯ �޼ҵ� 
	public static MemberDao getinstance() {
		return instance;
	}
	
	public int signup(MemberDto dto) {
		String SQL = "insert into member(member_id, member_password, member_name, member_resdentnum, member_sex, member_phone, member_cardcompany, member_cardbenefit, member_cardtype)"
				+ "values(?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, dto.getMember_id());
			pstmt.setString(2, dto.getMember_password());
			pstmt.setString(3, dto.getMember_name());
			pstmt.setInt(4, dto.getMember_resdentnum());
			pstmt.setString(5, dto.getMember_sex());
			pstmt.setString(6, dto.getMember_phone());
			pstmt.setString(7, dto.getMember_cardcompany());
			pstmt.setString(8, dto.getMember_cardbenefit());
			pstmt.setString(9, dto.getMember_cardtype());

			pstmt.executeUpdate();

			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}

	// �α��� �޼ҵ�
	public int login(String id, String password) {

		String SQL = "select * from member where member_id=? and member_password=?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, password);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				return 1;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}

	public String findid(String name, String phone) {

		String SQL = "select member_id from member where member_name=? and member_phone=? ";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString("member_id");

				return id;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public String findpw(String id, String name, String phone) {

		String SQL = "select member_password from member where member_id=? and  member_name=? and member_phone=? ";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, phone);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				String password = rs.getString("member_password");

				return password;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public MemberDto getMember(String id) {

		try {
			String SQL = "select * from Member where member_id=? ";

			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				MemberDto dto = new MemberDto(rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
						rs.getString(8));

				return dto;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}

	public int delete(String password, String id) {
		String SQL = "delete from member where member_password= ? and member_id =?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, password);
			pstmt.setString(2, id);
			pstmt.executeUpdate();

			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}

	// ��������
	public int update(MemberDto dto, String id) {
		String SQL = "update member set member_password=? , member_name = ? ,member_phone=? , member_cardcompany=?,member_cardbenefit=?,member_cardtype=? where member_id =?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, dto.getMember_password());
			pstmt.setString(2, dto.getMember_name());
			pstmt.setString(3, dto.getMember_phone());
			pstmt.setString(4, dto.getMember_cardcompany());
			pstmt.setString(5, dto.getMember_cardbenefit());
			pstmt.setString(6, dto.getMember_cardtype());
			pstmt.setString(7, id);
			pstmt.executeUpdate();

			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}
	
	// 모든 회원 조회
	public ArrayList<MemberDto> memberlist() {
		
		String sql = "select * from member";
		
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				MemberDto dto = new MemberDto(
						rs.getString(2),
						rs.getString(4),
						rs.getString(6),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11));
				
				list.add(dto);
				
			}
			
			return list;
			
		}catch (Exception e) {
			e.getMessage();
			e.getStackTrace();
		}
		return list;
	}
}