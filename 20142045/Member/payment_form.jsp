<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Payment Page</title>
</head>
<body>
<center>
	<H2>카드결제</H2>
	
	<FORM action="payment.jsp" method="post">
		<TABLE>
			<TR>
				<TD>카드 번호</TD>
				<TD><INPUT type="text" name="card_no" required></TD>
			</TR>
			<TR>
				<TD>유효 날짜</TD>
				<TD>
					<SELECT name="month">
					    <OPTION value="">1</OPTION>
					    <OPTION value="">2</OPTION>
					    <OPTION value="">3</OPTION>
					    <OPTION value="">4</OPTION>
					    <OPTION value="">5</OPTION>
					    <OPTION value="">6</OPTION>
					    <OPTION value="">7</OPTION>
					    <OPTION value="">8</OPTION>
					    <OPTION value="">9</OPTION>
					    <OPTION value="">10</OPTION>
					    <OPTION value="">11</OPTION>
					    <OPTION value="">12</OPTION>
					</select>
					<SELECT name="year">
					    <OPTION value="">2016</OPTION>
					    <OPTION value="">2017</OPTION>
					    <OPTION value="">2018</OPTION>
					    <OPTION value="">2019</OPTION>
					    <OPTION value="">2020</OPTION>
					    <OPTION value="">2021</OPTION>
					    <OPTION value="">2022</OPTION>
					</select>
	
				</TD>
			</TR>
			<TR>
				<TD>CVC 번호</TD>
				<TD><INPUT type="password" name="cvc" size="3" maxlength="3" required></TD>
			</TR>
		</TABLE>
		
		<INPUT type="hidden" name="id_resv" value=<%= request.getParameter("id_resv") %> />
		<INPUT type="hidden" name="seat_no" value=<%= request.getParameter("seat_no") %> />
		<INPUT type="submit" value="결제">
		<INPUT type="button" value="취소" onclick="javascript:history.go(-1);">
	</FORM>
</center>
</body>
</html>