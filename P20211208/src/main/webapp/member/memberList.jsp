<%@page import="com.dev.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberList.jsp</title>
</head>
<body>
<%-- <%@ include file="../menu.jsp" %> --%>
<jsp:include page="../menu.jsp"></jsp:include>
<%-- 
<%
	String id = (String) session.getAttribute("id");
	if (id == null) {
		response.sendRedirect("login.jsp");
	} else {
%>
 --%>
<c:choose>
	<c:when test="${sessionScope.id ==null }">
		<c:redirect url="login.jsp" ></c:redirect>
	</c:when>
	<c:otherwise>
	
<h3><%=session.getAttribute("name")%>님, 환영합니다.</h3>
	<a href="index.jsp">첫 페이지로</a>
	<h3>회원목록</h3>
	<table border='1'>
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
<%-- 		
			<%
			List<MemberVO> list = (List<MemberVO>) request.getAttribute("memberList");
			for (MemberVO vo : list) {
			%>
			<tr>
				<td><%=vo.getId()%></td>
				<td><%=vo.getPasswd()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getMail()%></td>
			</tr>
			<%
			}
			%>
--%>
		<c:forEach var="item" items="${requestScope.memberList }">
			<tr>
				<td>${item.id }</td>
				<td>${item.passwd }</td>
				<td>${item.name }</td>
				<td>${item.mail }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<%--  	
    <%
	}
	%> 
--%>
	</c:otherwise>
</c:choose>
<%-- <%@ include file="../footer.jsp" %> --%>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>