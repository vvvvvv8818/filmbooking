<%@ tag language="java" pageEncoding="UTF-8" import="java.sql.*" %>
<%@ attribute name="bgcolor" %> 

<jsp:useBean id="mlist" class="beans.MemberListBean" scope="page" />
<TABLE cellpadding="10" bgcolor=${bgcolor}>
	<TR bgcolor="lightgrey">
		<TD>ID</TD>
		<TD>Age</TD>
		<TD>Registration date</TD>
		<TD>Operation</TD>
	</TR>
	
	<%
	ResultSet rs = mlist.getMemberList();
	while(rs.next())
	{
	%>
		<TR>
			<TD align="center"><%= rs.getString("name_mem") %></TD>
			<TD align="center"><%= rs.getString("age_mem") %></TD>
			<TD align="center"><%= rs.getString("register_date") %></TD>
			<TD align="center">
				<A href="admin_member_remove.jsp?idx=<%=rs.getInt("id_mem")%>">Remove</A>
			</TD>
		</TR>
	<%
	}
	%>
</TABLE>