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
<jsp:useBean id="vo2" class="com.dev.vo.MemberVO"></jsp:useBean>
	<jsp:setProperty property="id" name="vo2" value="user2"/>
	<jsp:setProperty property="name" name="vo2" value="홍길동"/>
	
	<h3> <jsp:getProperty property="id" name="vo2"/> </h3>
	<h3> <jsp:getProperty property="name" name="vo2"/> </h3>

<%-- <%@ include file="footer.jsp"%> --%>
	<jsp:include page="footer.jsp"></jsp:include>
<c:set var="name1" value="hwang"></c:set>
	<c:out value="${name1 }"></c:out>
	
	<c:out value="${id }"></c:out>
	<c:if test="${id != null }">
		<c:out value="${name }"></c:out>
	</c:if>
	
	<ul>
	<c:forEach begin="1" end="10" step="1">
		<li>Hello</li>
	</c:forEach>
	</ul>
 <%
		MemberVO vo1 = new MemberVO();
		vo1.setId("u1");
		vo1.setPasswd("2345");
		vo1.setName("홍길동");
		vo1.setMail("hong@email.com");
		
		out.print("<h3>"+vo1.getId()+"</h3>");
		
		String name2 = "김민식";
	
	    //<>안에서 선언한것들은 <>안에서만 출력가능
	
	%>
	
	<h3><%=vo1.getName() %></h3>
	<h3><%=name2 %></h3>
	
	<jsp:useBean id="vo4" class="com.dev.vo.MemberVO"></jsp:useBean>
	<jsp:setProperty property="id" name="vo4" value="u2"/>
	<jsp:setProperty property="passwd" name="vo4" value="2222"/>
	<jsp:setProperty property="name" name="vo4" value="홍반장"/>
	<jsp:setProperty property="mail" name="vo4" value="u2@mail.com"/>
	
	<h3>아이디: <jsp:getProperty property="id" name="vo4"/></h3>
	<h3>비밀번호: <jsp:getProperty property="passwd" name="vo4"/></h3>
	<h3>이름: <jsp:getProperty property="name" name="vo4"/></h3>
	<h3>이메일: <jsp:getProperty property="mail" name="vo4"/></h3>
	
	<c:set var="nameC" value="김민규"></c:set>
	<c:out value="${nameC }"></c:out>
	<c:out value="${vo4.name }"></c:out>
<!--<c:out value="${vo1 }"></c:out> %안에있는것 못불러옴 -->

	<c:set var="vo3" value="${vo4 }"></c:set><!--선언값 복사가능  -->
	<c:out value="${vo3.name }"></c:out>
	
	<%
		int a = 5, b = 3;
		if(a>b){
			out.print("<h3>(참)</h3>");
		}
		
		if(a>b){
			out.print("<h3>참입니다.</h3>");
		} else {
			out.print("<h3>거짓입니다.</h3>");
		}
		
		
	%>
	<c:set var="num1" value="6"></c:set>
	<c:set var="num2" value="5"></c:set>
	
	
	<c:if test="${num1 - num2 > 0 }"><!--num1 > num2 로 비교가 힘들다 가나다순으로 비교됨 -->
		<h3>참입니다..</h3>
	</c:if>
	
	<c:choose>
		<c:when test="${num1 - num2 > 0 }">
			<h3>참입니다...</h3>
		</c:when>
		<c:otherwise>
			<h3>거짓입니다...</h3>
		</c:otherwise>
	</c:choose>

	<%
		out.print("<ul>");
		for(int i=1; i<=10; i++){
			out.print("<li>"+i+"</li>");
		}
		out.print("</ul>");
	%>

	<ul>
	<c:forEach begin="1" end="10" step="1" var="val">
		<li>${val }</li>
	</c:forEach>
	</ul>
	
</body>
</html>