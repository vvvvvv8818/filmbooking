<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<jsp:useBean id="login" class="beans.LoginBean" scope="session" />
<jsp:setProperty name="login" property="*" />

<jsp:useBean id="booking" class="beans.BookingExceptionBean" scope="page" />

<%
int id = login.checkUser();
 if(id == -1)
	 out.println("<script>alert('로그인 실패');history.back();</script>");
 else if(id == 0)
 {
	 // admin
	 session.setAttribute("id_mem", id);
	 session.setAttribute("name_mem", login.getId());
	 response.sendRedirect("Admin/admin_film_list.jsp");
 }
 else
 {
	 //member
	 session.setAttribute("id_mem", id);
	 session.setAttribute("name_mem", login.getId());
	 
	int id_film = Integer.parseInt(session.getAttribute("id_film").toString());
	int id_mem = Integer.parseInt(session.getAttribute("id_mem").toString());
	boolean ok = booking.compareAge(id_film, id_mem);	// 회원 나이와 영화 관람가 비교
	if(ok == false)
	{
		out.println("<script>alert('관람가를 확인해주세요. 로그아웃 합니다.');location.href=\"logout.jsp\";</script>");
		//response.sendRedirect("logout.jsp");
	}
	else{
		response.sendRedirect("Member/booking_form.jsp");
	}
 }
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Login Handle Page</title>
</head>
<body>
</body>
</html>