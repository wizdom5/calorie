package member.contorller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;


/**
 * Servlet implementation class Login
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		
		int result=new MemberService().selectOne(userId,password);
		
		String view="";
		String msg;
		if(result==MemberService.LOGIN_OK) {
			//Member member= new MemberService().selectOne(userId);
			//	System.out.println(member);
			//	session객체를 받아서 login데이터를 삽입.
			
			//HttpSession session = request.getSession();
			//System.out.println(session.getId());
			//session.setAttribute("memberLoggedIn", member);
			//session.setMaxInactiveInterval(5);	//5초뒤에 session끊는 방법
			
			//아이디 저장 쿠키 남기기
			//String saveId=request.getParameter("saveId");
//			if(saveId!=null) {
//				//쿠키생성
//				Cookie c=new Cookie("saveId", userId);
//				c.setMaxAge(6*24*60*60); //6일간 쿠키 보관
//				c.setPath("/");
//				response.addCookie(c);
//			}else{
//				Cookie c=new Cookie("saveId", userId);
//				c.setMaxAge(0); //6일간 쿠키 보관
//				c.setPath("/");
//				response.addCookie(c);
//				
//			}
					
			//request.setAttribute("memberLoggedIn", member);
			view="/";
			msg="로그인성공";
		}
		else {
			
			if(result==MemberService.WRONG_PASSWORD) {
				msg="패스워드를 잘못 입력하셨습니다.";
			}
			else {
				msg="존재하지 않는 아이디 입니다.";
			}
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc", "/");
		view="views/common/msg.jsp";
		
		RequestDispatcher rd= request.getRequestDispatcher(view);
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
