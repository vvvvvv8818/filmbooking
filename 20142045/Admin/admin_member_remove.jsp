<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="mlistbean" class="beans.MemberListBean" scope="page" />
<%
	String id_mem = request.getParameter("idx");
	mlistbean.removeMember(Integer.parseInt(id_mem));
	response.sendRedirect("admin_member.jsp");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Remove Member Handle Page</title>
</head>
<body>
</body>
</html>