<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib tagdir="/WEB-INF/tags" prefix="rlist" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Booked List Page</title>
</head>
<body>
<center>
	<H2>영화 예매 목록</H2>
	<%= session.getAttribute("name_mem") %>님이 로그인한 상태입니다.<BR>
	<!--  id_film : <%= session.getAttribute("id_film") %><BR> -->
	<DIV>
		<A href="member_info_form.jsp">회원 정보 수정</A>	
		<A href="../logout.jsp">로그아웃</A>
	</DIV>
	<HR>
	
	<rlist:resv_list />
	
</center>
</body>
</html>