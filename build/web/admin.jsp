<%-- 
    Document   : admin
    Created on : 14-Dec-2022, 10:42:00 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
String username,password;
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
username=request.getParameter("unm");
password=request.getParameter("pwd");
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
stmt=con.createStatement();
String str="select * from register where username='"+username+"' and password='"+password+"'";
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