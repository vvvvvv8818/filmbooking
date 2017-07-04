<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="flist" class="beans.FilmListBean" scope="page" />

<%
	String id_film = request.getParameter("idx");
	flist.removeFilm( Integer.parseInt(id_film) );
	response.sendRedirect("admin_film_list.jsp");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Film Remove Handle Page</title>
</head>
<body>

</body>
</html>