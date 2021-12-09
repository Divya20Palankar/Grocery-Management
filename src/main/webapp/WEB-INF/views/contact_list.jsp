<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<h1>Contact us details</h1>
<table border="1" id="customers">

			<th>Name</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Subject</th>
			<th>Message</th>
			<th>Action</th>



			<c:forEach var="contact" items="${listContact}">
				<tr>

					<td>${contact.name}</td>
					<td>${contact.email}</td>
					<td>${contact.contact_no}</td>
					<td>${contact.subject}</td>
					<td>${contact.message}</td>
					<td> <a
						href="deleteContact?id=${contact.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table></section>
</body>
</html>