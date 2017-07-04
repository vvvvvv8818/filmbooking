<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Member Information Modification Page</title>
</head>
<body>
<center>
<H2>회원정보변경</H2>
<FORM action="member_info.jsp" method="post">
	<TABLE cellpadding="5" cellspacing="5">
		<TR>
			<TD bgcolor="lightgrey">ID</TD>
			<TD><INPUT type="text" name="id"readonly="readonly" value=<%= session.getAttribute("name_mem") %> /></TD>
		</TR>
		<TR>
			<TD bgcolor="lightgrey">비밀번호</TD>
			<TD><INPUT type="password" name="psw"></TD>
		</TR>
		<TR>
			<TD bgcolor="lightgrey">비밀번호 확인</TD>
			<TD><INPUT type="password" name="psw_confirm"></TD>
		</TR>
		<TR>
			<TD bgcolor="lightgrey">나이</TD>
			<TD><INPUT type="number" name="age"></TD>
		</TR>
	</TABLE>
	<INPUT type="submit" value="승인">
	<INPUT type="reset" value="초기화">
</FORM>
</center>
</body>
</html>