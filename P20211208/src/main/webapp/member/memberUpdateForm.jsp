<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = (String) session.getAttribute("id");
	if (id == null) {
		response.sendRedirect("../login.jsp");
	} else {
	%>
<%@ include file="../menu.jsp"%>
	<h3><%=session.getAttribute("name")%>님, 환영합니다.</h3>


	<%
	MemberVO vo = (MemberVO) request.getAttribute("member");
	%>
	
	<form action='memberUpdate.do' method='post'>
		ID: <input type='text' name='id' value='<%=vo.getId()%>'><br>
		비밀번호: <input type='password' name='passwd' value='<%=vo.getPasswd()%>'><br> 
		이름: <input type='text' name='name' value='<%=vo.getName()%>'><br> 
		E-mail: <input type='email' name='mail' value='<%=vo.getMail()%>'><br>
		<input type='submit' value='수정'>
	</form>
	
	<%@ include file="../footer.jsp"%>
	<%
	}
	%>
</body>
</html>