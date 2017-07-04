<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="join" class="beans.JoinBean" scope="page"/>
<jsp:setProperty name="join" property="*"/>
<%
int res = join.insert();
if(res == join.SUCCESS){
	out.println("<script>alert('회원가입 성공!');history.go(-2);</script>");
}
else if(res == join.PSWERR)	out.println("<script>alert('비밀번호를 확인해 주세요.');history.back();</script>");
else if(res == join.FLLERR)	out.println("<script>alert('양식을 모두 작성해 주세요.');history.back();</script>");
else if(res == join.IDERR)	out.println("<script>alert('중복되는 아이디가 존재합니다.');history.back();</script>");
else if(res == join.EXCEPT)	out.println("<script>alert('회원가입 실패!');history.back();</script>");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Join Handle Page</title>
</head>
<body>
</body>
</html>