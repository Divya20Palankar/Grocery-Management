<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/payment.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
</head>
<body>
<header>
    <div class="wrapper">
        <h2>Payment Form</h2>
        <form action="savePayment" method="post" modelAttribute="payment">
           
            <div class="input_group">
                <div class="input_box">
                <div class="heading">Name</div>
                    <input type="text" name="name" required class="name">
                   
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                <div class="heading">Email Id</div>
                    <input type="email" name="email" required class="name">
                </div>
            </div>
            
            <div class="input_group">
                <div class="input_box">
                <div class="heading">Contact No.</div>
                    <input type="text" name="contact_no" required class="name">  
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                <div class="heading">Address</div>
                    <input type="text" name="address" required class="name">
                
                </div>
            </div>
            <div class="input_group">
                <div class="input_box">
                <div class="heading">City</div>
                    <input type="text" name="city" required class="name">
                   
                </div>
                
                   <div class="input_box">
                   <div class="heading">Pin Code</div>
                    <input type="text" name="pin"  required class="name"> 
                </div>
            </div>
             <div class="input_group">
                <div class="input_box">
               <div class="heading">Payment Method</div>
                 <select id="test" name="payment_method" class="name" onchange="showDiv('hidden_div', this)">
                    <option value="cod">COD</option>
                    <option value="1">Other</option>
                 </select>
              </div></div>
       <div id="hidden_div">
       <div class="input_group">
                <div class="input_box">
                <div class="heading">Card type</div>
                     <select name="card_type" class="name">
                        <option value="visa">Visa</option>
                        <option value="rupay">Rupay</option>
                      </select>
                </div>
            </div>
             <div class="input_group">
                <div class="input_box">
                <div class="heading">Account Holder name</div>
                     <input type="text" name="account_holdername"  class="name">
                </div>
            </div>
            
            <div class="input_group">
                <div class="input_box">
                <div class="heading">CVV</div>
                    <input type="password" name="cvv"  class="name">
                </div>
            </div>
            
            <div class="input_group">
                <div class="input_box">
                    <div class="heading">Card Number</div>
                     <input type="text" name="card_no" placeholder="XXXX-XXXX-XXXX-XXXX" class="name">
                </div>
            </div>
            
            <div class="input_group">
                <div class="input_box">
                    <div class="heading">Expiry Date</div>
                     <input type="text" name="exp_date" class="name">
                </div>
            </div>
            
            
       </div>

<script>
function showDiv(divId, element)
{
    document.getElementById(divId).style.display = element.value == 1 ? 'block' : 'none';
}
</script>
                 <div class="input_group">
                        <div class="input_box">
                            <button type="submit" onclick="fun()">PROCEED FOR PAYMENT </button>
                        </div>
                    </div>
        </form>
    </div>
    <script>
            function fun(){
                alert("Payment done successfully")
            }
        </script>
</body>
</html>
        