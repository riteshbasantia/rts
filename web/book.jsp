<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%!

String s1,s2,s3,s4,s5,s6,s7;

int i1,i2;
Connection con;
Statement stmt;

%>
<%
     try {
s1=request.getParameter("nam");
s2=request.getParameter("sm");
s3=request.getParameter("mv");
s4=request.getParameter("cdate");
s5=request.getParameter("ctime");
s6=request.getParameter("seat");
s7=request.getParameter("price");
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
 PreparedStatement pst=con.prepareStatement("insert into ticket values(?,?,?,?,?,?,?)");
                pst.setString(1,s1);
                pst.setString(2,s2);
                pst.setString(3,s3);
                pst.setString(4,s4);
                pst.setString(5,s5);
                pst.setString(6,s6);
                pst.setString(7,s7);
  
                    int i=pst.executeUpdate();
                   if(i>0){
                       out.print("Update Sucessful");
                   }
                   else{
                       out.print("Unsucessfull");
                   }
        }
        catch(Exception e){}  
%>
<jsp:include page="payment.jsp"/> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="payment.css">

</head>
<body>

<div class="container">

    <form action="">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>Full name :</span>
                    <input type="text" placeholder="Ritesh Basantia">
                </div>
                <div class="inputBox">
                    <span>Email :</span>
                    <input type="email" placeholder="example@example.com">
                </div>
                <div class="inputBox">
                    <span>Address :</span>
                    <input type="text" placeholder="Room - street - locality">
                </div>
                <div class="inputBox">
                    <span>City :</span>
                    <input type="text" placeholder="Bhubaneswar">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>State :</span>
                        <input type="text" placeholder="India">
                    </div>
                    <div class="inputBox">
                        <span>Zip code :</span>
                        <input type="text" placeholder="123 456">
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">Payment</h3>

                <div class="inputBox">
                    <span>Cards accepted :</span>
                    <img src="img/card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>Name on card :</span>
                    <input type="text" placeholder="Sushree Sucharita">
                </div>
                <div class="inputBox">
                    <span>Card number :</span>
                    <input type="number" placeholder="1111-2222-3333-4444" max="99999999999999999" min="0000000000000000">
                </div>
                <div class="inputBox">
                    <span>Exp month :</span>
                    <input type="text" placeholder="January">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>Exp year :</span>
                        <input type="number" placeholder="2022">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="123">
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="proceed to checkout" class="submit-btn">

    </form>

</div>    
    
</body>
</html>
