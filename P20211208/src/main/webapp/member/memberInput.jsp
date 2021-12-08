<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInput.jsp</title>
</head>
<body>
	<%
	String id = (String) session.getAttribute("id");
	if (id == null) {
		response.sendRedirect("../login.jsp");
	} else {
	%>

	<h3><%=session.getAttribute("name")%>님, 환영합니다.</h3>
	<!--입력.jsp -> 컨트롤러 -> 출력  -->
	<form action='../memberInsert.do' method='post'>
		<!--get heder(주소창)표출 255byte 제한// post body에 표출 용량제한 없음 -->
		ID: <input type='text' name='id'><br> 
		비밀번호: <input type='password' name='passwd'><br> 
		이름: <input type='text' name='name'><br> 
		E-mail: <input type='email'	name='mail'><br> 
		<input type='submit' value='가입'>
	</form>
	<%
	}
	%>
</body>
</html>