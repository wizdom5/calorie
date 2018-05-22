package member.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import static common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop=new Properties();
	public int selectOne(Connection conn, String userId, String password) {
		int result=-1;
		PreparedStatement pstmt=null;
		String sql="";
		ResultSet rs=null;
		
		try {
			String fileName=MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
			prop.load(new FileReader(fileName));
			sql=prop.getProperty("selectOne");
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("userid").equals(userId)&&rs.getString("password").equals(password)) {
					return 1;
				}
				else if(rs.getString("userid").equals(userId)) {
					return 0;
				}
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
	
}
