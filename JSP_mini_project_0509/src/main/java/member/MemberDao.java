package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDao {
	private static MemberDao instance;
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/kcd_mall";
	String id = "root";
	String password = "1111";
	private Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private MemberDao()throws SQLException {
		 try {
			 Class.forName(driverName);
			 conn = DriverManager.getConnection(url, id, password);
		 } catch (ClassNotFoundException e){ e.printStackTrace(); return; }
	 }
	
	public static MemberDao getInstance() throws SQLException {
		if(instance == null)
			instance = new MemberDao();
		return instance;
	}
	
	public void insertMember(Member member) throws SQLException {
		String sql = "INSERT INTO member(id, password, name, gender, birth, mail, phone, address, resister_day) VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member.getID());
		pstmt.setString(2, member.getPASSWORD());
		pstmt.setString(3, member.getNAME());
		pstmt.setString(4, member.getGENDER());
		pstmt.setString(5, member.getBIRTH());
		pstmt.setString(6, member.getMAIL());
		pstmt.setString(7, member.getPHONE());
		pstmt.setString(8, member.getADDRESS());
		pstmt.setString(9, member.getRESISTER_DAY());
		int i = pstmt.executeUpdate();
		System.out.println(i);
		
	}
	
}
