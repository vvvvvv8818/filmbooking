<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib tagdir="/WEB-INF/tags" prefix="flist" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Film Administration Page</title>
</head>
<body>
<center>
	<DIV>
		<A href="admin_film_insert_form.html">Insert Film</A>
		<A href="admin_member.jsp">Member Management</A>
		<A href="../logout.jsp">로그아웃</A>
	</DIV>
	<HR>
	<flist:film_list bgcolor="white"
							lastcolumn="Operation"
							operation="Remove"
							opref="admin_film_remove.jsp"/>
</center>
</body>
</html>