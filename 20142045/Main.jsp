<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int id_film = Integer.parseInt(request.getParameter("idx"));
	session.setAttribute("id_film", id_film);
	response.sendRedirect("login_form.html");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Main (Movie List) Handle Page</title>
</head>
<body>
</body>
</html>