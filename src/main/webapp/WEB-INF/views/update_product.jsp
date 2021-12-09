<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
            <a href="admin"> dashboard</a>
            <a href="product_list">View all products</a>
            <a href="customer_list">Constomer Details</a>
           
            <a href="contact_list">Contact us Details</a>
                
         <a href="index">logout</a>  
        </nav>
    </header>
   
    <div class="add" id="add">
     
        <form:form action="saveProduct" method="post" modelAttribute="product">
           <div class="box">
            <form:hidden path="id"/>
                <h1>update products</h1><br>
                Product name : <form:input path="product_name" class="text"  placeholder="Enter product name"/><br><br>
                description : <form:input path="description"  class="text" placeholder="enter product description"/><br><br>
                Quantity : <form:input path="quantity"  class="text"  placeholder="enter quantity of product"/><br><br>
                category : <br>
                <select name="category">
                <option value="1">Type one</option>
                <option value="2">Type two</option></select><br><br>
                cost : <form:input path="cost" class="text" placeholder="enter the cost of product"/><br>
                <br><br><input type="submit" class="btn" value="Update" onclick="fun()">
           </div>
           </form:form>
            
        
    </div>
    <script>
            function fun(){
                alert("Product updated successfully");
            }
        </script>
    
</body>
</html>