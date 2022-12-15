<%-- 
    Document   : newjsp
    Created on : 08-Dec-2022, 3:29:07 pm
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin</h1>
        <%
            try{
             Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from register");
            while(rs.next())
            {
        %>
        <table align="center" border="1" width="100%">
            <tbody>
                <tr>
                    <th width="25%">Name</th>
                    <th width="25%">Email</th>
                    <th width="25%">Phone no.</th>
                    <th width="25%">Password</th>
                </tr>
            <td width="25%"><%=rs.getString(1)%></td>
            <td width="25%"><%=rs.getString(2)%></td>
            <td width="25%"><%=rs.getString(3)%></td>
            <td width="25%"><%=rs.getString(4)%></td>

            </tbody>
            
        </table>
           <%
               }
            }
catch(Exception e){
e.printStackTrace();
}
           %> 
    </body>
</html>
