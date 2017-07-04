<%@ tag language="java" pageEncoding="UTF-8" import="java.sql.*"%>

<jsp:useBean id="rlist" class="beans.ResvListBean" scope="page" />

<TABLE bgcolor="white">
	<TR bgcolor="lightgrey">
		<TD>영화제목</TD>
		<TD>상영 기간</TD>
		<TD>예약일</TD>
		<TD>좌석 번호</TD>
		<TD>예약 상황</TD>
		<TD>결제 및 취소</TD>
	</TR>
	
	<%
	int id_mem = Integer.parseInt(session.getAttribute("id_mem").toString());
	ResultSet rs = rlist.getResvList(id_mem);
	while(rs.next())
	{
		String screening_date = rs.getString("release_date").toString()
								+ "~" + rs.getString("end_date").toString();
		String status;
		if(rs.getInt("status") == 0) status = "-";
		else	status = "예약완료";
	%>
		<TR>
			<TD align="center"><%= rs.getString("film_name") %></TD>
			<TD align="center"><%= screening_date %></TD>
			<TD align="center"><%= rs.getDate("resv_date").toString() %></TD>
			<TD align="center"><%= rs.getInt("seat_no") %></TD>
			<TD align="center"><%= status %></TD>
			<TD align="center">
			
			<FORM action="payment_form.jsp" method="post">
				<INPUT type="hidden" name="id_resv" value=<%= rs.getInt("id_resv") %> />
				<INPUT type="hidden" name="seat_no" value=<%= rs.getInt("seat_no") %> />
				<%	if(rs.getInt("status") == 0){
				%>		<INPUT type="submit" value="결제" />
			 	<%	}
					else{
				%>		<INPUT type="submit" value="결제" disabled />
				<%	}%>
			</FORM>
			
			<FORM action="booked_remove.jsp" method="post">
				<INPUT type="hidden" name="id_resv" value=<%= rs.getInt("id_resv") %> />
				<INPUT type="hidden" name="seat_no" value=<%= rs.getInt("seat_no") %> />
			 	<INPUT type="submit" value="예매내역 삭제" />
			</FORM>
			</TD>
		</TR>
	<%
	}
	%>
</TABLE>