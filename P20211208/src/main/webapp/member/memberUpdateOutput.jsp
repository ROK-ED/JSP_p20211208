<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdateOutput.jsp</title>
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


<a href="index.jsp">첫 페이지</a>
   <%
      String rid = (String) request.getAttribute("rid");


   %>
      <table>
         <tr>
            <th>회원아이디</th>
            <td><%=rid%></td>
         </tr>
         <tr>
            <th>비밀번호</th>
            <td><%=request.getAttribute("rpass")%></td>
         </tr>
         <tr>
            <th>이름</th>
            <td><%=request.getAttribute("rname")%></td>
         </tr>
         <tr>
            <th>이메일</th>
            <td><%=request.getAttribute("rmail")%></td>
         </tr>
      </table>
	<%@ include file="../footer.jsp"%>
	<%
	}
	%>
</body>
</html>