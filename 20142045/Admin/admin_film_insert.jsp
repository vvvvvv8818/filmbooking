<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="film_insert" class="beans.FilmInsertBean" scope="page" />
<jsp:setProperty name="film_insert" property="*" />

<%
	int res = film_insert.insert();
	if(res == film_insert.SUCCESS){
		out.println("<script>alert('영화 추가 성공!');</script>");
		response.sendRedirect("admin_film_list.jsp");
	}
	else if(res == film_insert.FLLERR)
		out.println("<script>alert('양식을 모두 작성해 주세요.');history.back();</script>");
	else out.println("<script>alert('영화 추가 실패!');history.back();</script>");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert Film Handle Page</title>
</head>
<body>

</body>
</html>