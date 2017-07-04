<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="modify" class="beans.MemberModifyBean" scope="page" />
<jsp:setProperty name="modify" property="*" />

<%
	int res = modify.modify();
if(res == modify.SUCCESS){
	out.println("<script>alert('회원 정보 수정 성공!');history.go(-2);</script>");
}
else if(res == modify.PSWERR)	out.println("<script>alert('비밀번호를 확인해 주세요.');history.back();</script>");
else if(res == modify.FLLERR)	out.println("<script>alert('양식을 모두 작성해 주세요.');history.back();</script>");
else if(res == modify.EXCEPT)	out.println("<script>alert('회원 정보 수정 실패!');history.back();</script>");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Member Information Modification Handle Page</title>
</head>
<body>
</body>
</html>