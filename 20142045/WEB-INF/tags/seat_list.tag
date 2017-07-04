<%@ tag language="java" pageEncoding="UTF-8" import="java.sql.*"%>

<%@ attribute name="ref" %> 

<jsp:useBean id="slist" class="beans.SeatListBean" scope="page" />

<TABLE cellpadding="10" bgcolor="white">
	<TR bgcolor="lightgrey">
		<TD>좌석 번호</TD>
		<TD>좌석 현황</TD>
		<TD>예매</TD>
	</TR>
	
	<%
	int id_film = Integer.parseInt(session.getAttribute("id_film").toString());
	
	/* 좌석 수 가져와서 배열 초기화 */
	int seat_num = slist.getSeatNum(id_film);
	boolean seats[] = new boolean[seat_num];	// DB 값을 저장하기 위한  boolean 배열
	
	ResultSet rs = slist.getSeatList(id_film);
	rs.next();
	String seat_n[] = new String[seat_num];	// DB 값을 가져오기 위한 문자열 배열 (S1,S2,...)
	for(int i = 0; i<seat_num; i++)
	{
		seat_n[i] = "S" + (i+1);
	}
	
	for(int i = 0; i<seat_num; i++)
	{
		int data = rs.getInt(seat_n[i]);
		if(data == 0)	seats[i] = false;
		else			seats[i] = true;
	}

	for(int i = 0; i<seat_num; i++)
	{
	%>
		<TR>
			<TD align="center"><%= i+1 %></TD>
			<%
				/* DB의 데이터에 따라 좌석 현황에 출력할 문자열과 예매 버튼 결정 */
				if(seats[i] == true){
			%>
			<TD align="center">예매 불가</TD>
			<TD align="center">
				 	<INPUT type="button" value="영화 예매" disabled />
			</TD>
			<%
				}
				else{
			%>
			<TD align="center">예매 가능</TD>
			<TD align="center">
				<FORM action=${ref } method="post">
				 	<INPUT type="hidden" name="seat_no" value=<%= i+1 %> />
				 	<INPUT type="submit" value="영화 예매" />
				 </FORM>
			</TD>
			<%
				}
			%>
		</TR>
	<%
	}
	%>
</TABLE>
