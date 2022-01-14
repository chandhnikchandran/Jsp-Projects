<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");

try
{
	//here we type Project.connectionprovider
Connection con=ConnectionProvider.getCon();
	//Class.forName("com.mysql.jdbc.Driver");
	//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8080/project","root","mysqlroot123");
	Statement st=con.createStatement();
st.executeUpdate("insert into student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	out.println(e);
}
%>