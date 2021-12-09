<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <link rel="stylesheet" href="resources/css/admin.css">
         <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
    <header>
    <a href="#" class="logo"><span >Admin</span></a>
        <nav class="navbar">
            <a href="#dashboard"> dashboard</a>
            <a  href="#add">Add Product</a>
           <a href="product_list">View all products</a>
            <a href="customer_list">Customer Details</a>
            <a href="contact_list"> Contact us Details</a>
            <a href="index">Logout</a>  
        </nav>
    </header>
    <div class="dashboard" id="dashboard">
       <img src="resources/images/admin.jpg" style="height: 600px;
      width: 100%;"/>
    </div>
    <div class="add" id="add">
        <form action="saveProduct" method="post" modelAttribute="product">
            <div class="box">
                <h1>add products</h1><br>
                Product name : <input type="text" class="text" name="product_name" placeholder="Enter product name"><br><br>
                description : <input type="text" class="text" name="description" placeholder="enter product description"><br><br>
                Quantity : <input type="text" class="text" name="quantity" placeholder="enter quantity of product"><br><br>
                category : <br>
                <select name="category">
                <option value="1">Type one</option>
                <option value="2">Type two</option></select><br><br>
                cost : <input type="text" class="text" name="cost" placeholder="enter the cost of product"><br>
                <br><br><input type="submit" class="btn" value="add" onclick="fun()">
           
            </div>
        </form>
    </div>
     <script>
            function fun(){
                alert("Product added successfully")
            }
        </script>
    
</body>
</html>