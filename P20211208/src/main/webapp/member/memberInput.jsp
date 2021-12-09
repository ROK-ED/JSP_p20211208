<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInput.jsp</title>
</head>
<body>
<%-- <%@ include file="../menu.jsp"%> --%>
<jsp:include page="../menu.jsp"></jsp:include>
<%-- 	
	<%
	String id = (String) session.getAttribute("id");
	if (id == null) {
		response.sendRedirect("../login.jsp");
	} else {
	%>
--%>
<c:choose>
	<c:when test="${sessionScope.id == null }">
		<c:redirect url="../login.jsp" ></c:redirect>
	</c:when>
	<c:otherwise>	
<%-- <h3><%=session.getAttribute("name")%>님, 환영합니다.</h3> --%>
	<h3>${sessionScope.name }님, 환영합니다.</h3>
	<a href="../index.jsp">첫 페이지로</a>
	<!--입력.jsp -> 컨트롤러 -> 출력  -->
	<form action='../memberInsert.do' method='post'>
		<!--get heder(주소창)표출 255byte 제한// post body에 표출 용량제한 없음 -->
		ID: <input type='text' name='id'><br> 
		비밀번호: <input type='password' name='passwd'><br> 
		이름: <input type='text' name='name'><br> 
		E-mail: <input type='email'	name='mail'><br> 
		<input type='submit' value='가입'>
	</form>
	</c:otherwise>
</c:choose>
<%-- 	
	<%
	}
	%>
--%>
<%-- <%@ include file="../footer.jsp"%> --%>
<jsp:include page="../footer.jsp"></jsp:include>	
</body>
</html>