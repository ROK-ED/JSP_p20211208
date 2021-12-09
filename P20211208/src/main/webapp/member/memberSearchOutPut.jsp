<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearchOutPut.jsp</title>
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
	
	<%! // !안에는 변수나 메소드 선언가능
		public String concat(String a, String b){
		return a+", "+b;
	}

	%>
	<%
	MemberVO vo = (MemberVO) request.getAttribute("member");
	double pi = Math.PI;
	%>
	
	<a href="index.jsp">첫 페이지로</a>
	<h3>회원 상세 정보</h3>
	<%
	if (vo == null) {
	%>
	<h3>조회된 정보가 없습니다.</h3>
	<%
	} else {
	%>

	<table>
		<tr>
			<th>회원아이디</th>
			<td><%=concat(Double.toString(pi)+"아이디는", vo.getId())%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=vo.getPasswd()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=vo.getName()%></td>
		</tr>
		<tr>
			<th>e-mail</th>
			<td><%=vo.getMail()%></td>
		</tr>

	</table>
	<%
	}
	%>
	<%@ include file="../footer.jsp"%>
	<%
	}
	%>
	
	
</body>
</html>