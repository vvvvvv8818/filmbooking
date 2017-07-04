<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="rlist" class="beans.ResvListBean" scope="page" />
<jsp:useBean id="slist" class="beans.SeatListBean" scope="page" />

<%
	int id_resv = Integer.parseInt(request.getParameter("id_resv"));
	int id_seat = slist.getSeatId(Integer.parseInt(session.getAttribute("id_film").toString()));
	int seat_no = Integer.parseInt(request.getParameter("seat_no"));
	
	// resv DB 에서 삭제
	rlist.removeResv(id_resv);
	
	// seat DB에서 좌석 상태 변경
	slist.changeStatus(id_seat, seat_no, 0);
	
	response.sendRedirect("booked_list_form.jsp");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>