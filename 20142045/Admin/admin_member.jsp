<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib tagdir="/WEB-INF/tags" prefix="mlist" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Member Administration Page</title>
</head>
<body>
<center>
	<DIV>
		<A href="#" onclick="history.back()">Back</A>
		<A >Member Management</A>
	</DIV>
	<HR>
	<FORM action="admin_member.jsp" method="post">
		<mlist:member_list bgcolor="white"/>
	</FORM>
</center>
</body>
</html>