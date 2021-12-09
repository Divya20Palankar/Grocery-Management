<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer List</title>
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
<section>
<h1>Customer details</h1>
		
		<table border="1" id="customers">

			<th>Name</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Password</th>
			<th>Action</th>



			<c:forEach var="register" items="${listRegister}">
				<tr>

					<td>${register.name}</td>
					<td>${register.contact}</td>
					<td>${register.email}</td>
					<td>${register.password}</td>
					<td> <a
						href="deleteRegister?id=${register.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
</section>		
</body>
</html>