import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateDao {
	
	private String url="jdbc:oracle:thin:@127.0.0.1:1521/xepdb1";
	private String name="system";
	private String password="oracle";
	private String driver="oracle.jdbc.OracleDriver";

	public void loadDriver(String driver) {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(url, name, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public String update(Member member) {
		loadDriver(driver);
		Connection con=getConnection();
		String sql="update member set password=? name=? nickname=? gender=? birthday=? email=? address=? where mobile=?";
		PreparedStatement pstmt;
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getNickname());
			pstmt.setString(4, member.getGender());
			pstmt.setInt(5, member.getBirthday());			
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getAddress());
			pstmt.executeUpdate();
			pstmt.clearParameters();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return sql;
		
	}
		
	}
		
	