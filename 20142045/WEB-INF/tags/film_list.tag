<%@ tag language="java" pageEncoding="UTF-8" import="java.sql.*" %>

<%@ attribute name="bgcolor" %>
<%@ attribute name="lastcolumn" %>
<%@ attribute name="operation" %>
<%@ attribute name="opref" %>

<jsp:useBean id="flist" class="beans.FilmListBean" scope="page" />
<jsp:useBean id="booking" class="beans.BookingExceptionBean" scope="page" />

<TABLE cellpadding="10" bgcolor=${bgcolor}>
	<TR bgcolor="lightgrey">
		<TD>타이틀</TD>
		<TD>관람가</TD>
		<TD>총 좌석 수</TD>
		<TD>개봉날짜</TD>
		<TD>종영날짜</TD>
		<TD>${lastcolumn}</TD>
	</TR>
	
	<%
	ResultSet rs = flist.getFilmList();
	while(rs.next())
	{
	%>
		<TR>
			<TD align="center"><%= rs.getString("name_film") %></TD>
			<TD align="center"><%= rs.getString("age_phase") %></TD>
			<TD align="center"><%= rs.getString("seat_num") %></TD>
			<TD align="center"><%= rs.getString("release_date") %></TD>
			<TD align="center"><%= rs.getString("end_date") %></TD>
			<TD align="center">

			 	<%	if( !( "admin".equals(session.getAttribute("name_mem")) ) &&
						( booking.hasSeat(rs.getInt("id_film")) == false ) ){
				%>			<A >선택 불가</A>
				<%	}else{
				%>		<A href="<%=opref%>?idx=<%=rs.getInt("id_film")%>"><%= operation %></A>
				<% }%>
			</TD>
		</TR>
	<%
	}
	%>
</TABLE>
