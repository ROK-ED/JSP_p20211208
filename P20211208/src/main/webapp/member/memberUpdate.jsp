<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate.jsp</title>
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
<a href="../index.jsp">첫 페이지로</a>
	<h3>회원검색</h3>
	<form action="../memberSearch.do" method='get'>
		ID: <input type='text' name='id'><br> 
		<input type='hidden' name='job' value='update'> 
		<input type='submit' value='수정'>
	</form>
	<%@ include file="../footer.jsp"%>
	<%
	}
	%>
	
	
</body>
</html>