package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.BoardDto;

public class BoardDao {
	private Connection conn;
	private ResultSet rs; 
	
	public BoardDao() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/card?serverTimezone=UTC", "root" , "7624" );
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	//  dao 객체 생성 
	private static BoardDao instance = new BoardDao();
	
	// dao 객체 반환 메소드 
	public static BoardDao getinstance() {
		return instance;
	}
	
	// 게시물 등록날짜 메소드 
	public String getDate() {
		String SQL = "SELECT NOW()"; //DB함수 = NOW() : 현재 날짜 
		try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				
				if ( rs.next()) {
					return rs.getString(1);
				}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}
	
	public int getnext() {
		String SQL = "SELECT MAX(board_id) from Board"; // DB함수 = MAX(필드명) : 해당 필드의 최대값
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				return rs.getInt(1) +1;		// 마지막 게시물 번호 + 1 
			}
			return 1; // 첫 게시물
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return -1; // db 오류 
	}
	public int write ( BoardDto dto) {
		String SQL =" insert into Board values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getnext());
			pstmt.setString(2, dto.getBoard_title());
			pstmt.setString(3, dto.getBoard_contents());
			pstmt.setString(4, dto.getBoard_userid());
			pstmt.setString(5, getDate());
			pstmt.setString(6, dto.getBoard_file());
			pstmt.setInt(7, 0);
			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
		} return -1;
	}
	
	
	// 게시물 모든 조회 메소드 
	public ArrayList<BoardDto> getboardlist(int pagenumber) {
		
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		try {
			String SQL = "select * from board where board_id< ? ORDER BY board_id DESC LIMIT 10";
			PreparedStatement pstmt = conn.prepareStatement(SQL);	
			pstmt.setInt(1, getnext() - (pagenumber-1)*10);
			rs = pstmt.executeQuery();
			
			while( rs.next() ) { // 결과 갯수만큼 반복
				
				BoardDto dto = new BoardDto();
				
				dto.setBoard_id( rs.getInt(1));
				dto.setBoard_title( rs.getString(2));
				dto.setBoard_contents( rs.getString(3));
				dto.setBoard_userid( rs.getString(4));
				dto.setBoard_date( rs.getString(5));
				dto.setBoard_file( rs.getString(6));
				
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
		} return  null;
	}
	
	public boolean nextpage( int pagenumber) {
		String SQL = "SELECT * FROM board where board_id < ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getnext() - (pagenumber-1)*10);
			
			rs=pstmt.executeQuery();
			if (rs.next()) {return true;}
			
		} catch (Exception e) {
		
		}return false;
		
	}
	
	public BoardDto getboard(int board_id) {
		
		try {
			String SQL = "select * from board where board_id = ?";
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, board_id);
			rs = pstmt.executeQuery();
			
			BoardDto dto = new BoardDto();
			
			if (rs.next()) {
				int count = rs.getInt(7)+1;
				
				dto.setBoard_id( rs.getInt(1));
				dto.setBoard_title( rs.getString(2));
				dto.setBoard_contents( rs.getString(3));
				dto.setBoard_userid( rs.getString(4));
				dto.setBoard_date( rs.getString(5));
				dto.setBoard_file( rs.getString(6));
				dto.setBoard_count(count);
				
				SQL = "update board set board_count = ? where board_id = ? ";
				pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, count);
				pstmt.setInt(2, board_id);
				
				pstmt.executeUpdate();
				
				return dto;
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		} return null;
	}
	
		public int deleteboard( int board_id) { 
		
		try {
			String SQL = "delete from board where board_id = ? ";
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, board_id);	
			pstmt.executeUpdate();
			////////////////////// 삭제후 //////////////////////////////
			
			SQL = "UPDATE board set board_id = board_id-1 where board_id > ?";
					// 삭제되는 게시물번호 보다 큰 번호는 -1씩 감소
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, board_id);
			pstmt.executeUpdate();
			
			return 1;
		}
		catch (Exception e) {
			// TODO: handle exception
		}	
		return -1;
	}
	
	//게시물 수정 메소드 
	public int updateboard( String board_title , String board_contents , String board_file ,  int board_id) { 
		
		try {
			String SQL = "update board set board_title = ? , board_contents=? , board_file=? where board_id = ? ";
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, board_title );
			pstmt.setString(2, board_contents);
			pstmt.setString(3, board_file);
			pstmt.setInt(4, board_id);
			
			pstmt.executeUpdate();
		
			return 1;
		}
		catch (Exception e) {
			// TODO: handle exception
		}	
		return -1;
	}
	
	// 게시물 검색 조회 메소드 
	public ArrayList<BoardDto> getboardsearch( String key , String keyword) {
		
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();

		try {
			
//			String SQL = "select * from board where key = keyword";
			String SQL = "select * from board where "+key+" like '%"+keyword+"%'";
			
			PreparedStatement pstmt = conn.prepareStatement(SQL);
	
			rs = pstmt.executeQuery();
			
			while( rs.next() ) { // 결과 갯수만큼 반복
			
				BoardDto dto = new BoardDto();
				
				dto.setBoard_id( rs.getInt(1));
				dto.setBoard_title( rs.getString(2));
				dto.setBoard_contents( rs.getString(3));
				dto.setBoard_userid( rs.getString(4));
				dto.setBoard_date( rs.getString(5));
				dto.setBoard_file( rs.getString(6));
				
				
				list.add(dto);
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
		}	
		return null;
	}
}
