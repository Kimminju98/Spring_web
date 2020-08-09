<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="obj" class="com.example.User" />
	<jsp:setProperty property="*" name="obj" />

	<%
		UserDAO userDAO = new UserDAO();
	int status = userDAO.join(obj);
	if (status > 0)
		out.print("You are successfully registered");
	else
		out.print("failed");
	%>

</body>
</html>