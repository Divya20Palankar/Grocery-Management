<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product List</title>
<link rel="stylesheet" href="resources/css/list.css">
<link rel="stylesheet" href="resources/css/table_style.css">

</head>

<body>

 <header>
    <a href="#" class="logo"><span >Admin</span></a>
        <nav class="navbar">
            <a href="admin"> Dashboard</a>  
        </nav>
    </header>
<section >
<h1>Product List</h1>
		
		<table border="1" id="customers">

			<th>Name</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Category</th>
			<th>Cost</th>
			<th>Action</th>



			<c:forEach var="product" items="${listProduct}">
				<tr>

					<td>${product.product_name}</td>
					<td>${product.description}</td>
					<td>${product.quantity}</td>
					<td>${product.category}</td>
					<td>${product.cost}</td>
					
					<td><a href="editProduct?id=${product.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteProduct?id=${product.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</section>
</body>
</html>