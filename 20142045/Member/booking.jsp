<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="rlist" class="beans.ResvListBean" scope="page" />

<%
	int id_mem	= Integer.parseInt(session.getAttribute("id_mem").toString());
	int id_film	= Integer.parseInt(session.getAttribute("id_film").toString());
	
	int seat_no	= Integer.parseInt(request.getParameter("seat_no"));
	rlist.insertResv(id_mem, id_film, seat_no);
	session.setAttribute("seat_no", seat_no);
	response.sendRedirect("booked_list_form.jsp");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Film Booking Page</title>
</head>
<body>

<!-- hadle page
	예약 불가 상태의 좌석인지 확인 후
	예매 버튼 클릭 -> booked 로 이동
	resv 튜플 하나 생성해야함!
	
	booking_form.jsp로 넘어오기 전에 처리
	모든 좌석이 예매되었을 경우
	회원 나이가 영화 관람가보다 어릴 경우 
-->

</body>
</html>