<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="rlist" class="beans.ResvListBean" scope="page" />
<jsp:useBean id="slist" class="beans.SeatListBean" scope="page" />

<%
	int id_resv = Integer.parseInt(request.getParameter("id_resv"));
	int id_seat = slist.getSeatId(Integer.parseInt(session.getAttribute("id_film").toString()));
	int seat_no = Integer.parseInt(request.getParameter("seat_no"));
	rlist.changeStatus(id_resv, 1);
	slist.changeStatus(id_seat, seat_no, 1);
	response.sendRedirect("booked_list_form.jsp");
%>
<!-- seat에 반영해야함!!!!!!!!!! -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Payment Handle Page</title>
</head>
<body>
</body>
</html>