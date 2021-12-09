<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 	
	
	<%-- <%@ include file="menu.jsp"%> --%>
	<jsp:include page="menu.jsp"></jsp:include>
	
    <%-- 	
	<c:choose>
		<c:when test="${id != null }">
			<h3>${name }</h3>
		</c:when>
		<c:otherwise>
			<h3>손님.</h3>
		</c:otherwise>
	</c:choose>
    --%>
<%-- 	
	<%
	String id = (String) session.getAttribute("id");
	if (id == null) {
	response.sendRedirect("login.jsp");
	} else {
	%>
 --%>
	<c:choose>
		<c:when test="${sessionScope.id == null }">
			<c:redirect url="login.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
			<%-- <h3><%=session.getAttribute("name") %>님, 환영합니다.!!</h3> --%>
			<h3>${sessionScope.name }님, 환영합니다.</h3>
			<a href="logout.do">로그아웃</a><br>
			<a href='member/memberInput.jsp'>회원등록</a><br>
			<a href='memberList.do'>회원목록</a><br><!--memberList.do, MemberListConroller, memberList.jsp  -->
			<a href='member/memberSearch.jsp'>회원검색</a><br>
			<a href='member/memberUpdate.jsp'>회원수정</a><br>
			<a href='member/memberDelete.jsp'>회원삭제</a><br>
		</c:otherwise>
	</c:choose>
<%-- 	
	<% 
	}
    %>
--%>
	<%-- <%@ include file="footer.jsp"%> --%>
	<jsp:include page="footer.jsp"></jsp:include>
	
  
</body>
</html>


<!-- 
create table member(
id VARCHAR2(100) PRIMARY key,
passwd VARCHAR2(10),
name VARCHAR2(100),
mail varchar2(20)
);
 -->