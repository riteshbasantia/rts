<%-- 
    Document   : payment
    Created on : 09-Dec-2022, 10:19:43 am
    Author     : DELL
--%>

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

    <form action="genticket.html">

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

         <input type="submit" value="proceed to checkout" class="submit-btn"></a>

    </form>

</div>    
    
</body>
</html>
