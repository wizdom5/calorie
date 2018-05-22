<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
#userId_{
	width:60%;
}

</style>
<body>
<jsp:include page="header.jsp"/>
<!-- 회원가입 -->
		<div align="center">
		<h2>회원가입정보 입력</h2>
      <form action="<%=request.getContextPath()%>/MemberEnrollEnd" method="post" onsubmit="return fn_enroll_validate();" style="width: 30%;">
      <table class="table">
         <tr>
         	<th>아이디</th>
            <td>
            	<input type="text" placeholder="4글자 이상" name="userId" id="userId_" required>
             	<input type="button" value="중복확인" onclick="fn_checkIdDuplicate();"/>
             </td>           
         </tr>
         <tr>
         	<th>비밀번호</th>
            <td><input type="password" name="password" id="password_" required><br></td>
         </tr>
          <tr>
         	<th>비밀번호 확인</th>
            <td><input type="password" name="passwordcheck" id="password_2" required><br></td>
           
         </tr>
         <tr>
         	<th>이름</th>
            <td><input type="text" name="userName" id="userName" required></td>
         </tr>
         <tr>
         	<th>나이</th>
            <td><input type="number" name="age" id="age"></td>
         </tr>
         <tr>
         	<th>이메일</th>
            <td><input type="email" name="email" placeholder="abc@ab.com" id="email"></td>
         </tr>
         <tr>	
         	<th>전화번호</th>
            <td><input type="tel" name="phone" placeholder="-(없이)01012345678" id="phone" maxlength=11 required></td>
         </tr>
         <tr>
         	<th>주소</th>
            <td><input type="text" name="address" id="address"><br></td>
         </tr>
         <tr>
         	<th>성별</th>
            <td>
            <input type="radio" name="gender" id="gender0" value="M" checked>
            <label for="gender0">남</label>
            <input type="radio" name="gender" id="gender1" value="F">
            <label for="gender1">여</label>
            </td>
         </tr>
        
      </table>
      <input type="submit" value="가입">
      <input type="reset" value="취소">
      </form>
    
    </div>
 
<jsp:include page="footer.jsp"/>		
</body>
</html>

