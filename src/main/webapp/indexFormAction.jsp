<%@page import="com.roze.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String Status="pending";
try{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
ps.setString(1, name);
ps.setString(2,mobilenumber);
ps.setString(3,email);
ps.setString(4, bloodgroup);
ps.setString(5,Status);
ps.executeUpdate();
response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("index.jsp?msg=invalid");	
}

%>