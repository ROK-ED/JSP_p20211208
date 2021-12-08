<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page errorPage="../error.jsp" %><!--jsp에러가나면 이쪽으로 던진다  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberOutput.jsp</title>
</head>
<body>
	<a href="index.jsp">첫 페이지로</a>
	<%
	//Integer.parseInt(""); //강제로 에러내기위해 써봄
	//tomcat 이 servlet 생성할때 repuest 생성해줌
	MemberVO vo = (MemberVO) request.getAttribute("member");
	%>
	<h3>입력한 아이디: <%=vo.getId() %></h3>
	<h3>입력한 이름: <%=vo.getName() %></h3>
	<h3>입력한 비번: <%=vo.getPasswd() %></h3>
	<h3>입력한 이메일: <%=vo.getMail() %></h3>
	
</body>
</html>