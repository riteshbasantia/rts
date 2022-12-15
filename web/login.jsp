<%-- 
    Document   : login
    Created on : 30-Nov-2022, 12:46:13 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
String uname,password;
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
uname=request.getParameter("unm");
password=request.getParameter("pwd");
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
stmt=con.createStatement();
String str="select * from register where username='"+uname+"' and password='"+password+"'";
rs=stmt.executeQuery(str);
if(rs.next())
{
%>
<jsp:forward page="loggedin.html"/>
<%
}
else
{
out.println("<html><body>Invalid Login and Password</body></html>");
%>
<jsp:include page="login.html"/> 
<%
}
stmt.close();
con.close();
%>

