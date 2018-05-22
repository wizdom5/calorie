package member.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDao;

public class MemberService {
	
	public static int LOGIN_OK=1;
	public static int WRONG_PASSWORD=0;
	public static int ID_NOT_EXIST=-1;
	public int selectOne(String userId, String password) {
		Connection conn = getConnection();
		int result= new MemberDao().selectOne(conn,userId,password);
		
		close(conn);
		
		return result;

		
	}
	
}
