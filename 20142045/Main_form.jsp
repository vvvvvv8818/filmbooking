<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib tagdir="/WEB-INF/tags" prefix="flist" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Main (Movie List) Page</title>
</head>
<body>
<center>
<H2>상영 영화 리스트</H2><HR>
	<flist:film_list bgcolor="white"
					lastcolumn="예매"
					operation="선택"
					opref="Main.jsp"/>
</center>
</body>
</html>