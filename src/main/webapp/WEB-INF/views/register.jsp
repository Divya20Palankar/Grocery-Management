<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/css/register.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <style>
   body {
 background-color: #CAFBF7;
 background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
 
}
   </style>
<body>
  <div class="container">
    <div class="title">Register</div>
    <div class="content">
      <form action="saveRegister" method="post" modelAttribute="register">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Name</span>
            <input type="text" name="name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Contact</span>
            <input type="text" name="contact" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="password" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details">Customer Role</span>
            <select class="Role" name="role" >
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select>
          </div>
        </div>
    
        <div class="button">
          <input type="submit" value="Register" onclick="fun()">
        </div>
           
        
      </form>
    </div>
  </div>
  <script>
    function fun(){
        alert(" Registeration Done Succesfully");      
    }  
</script>
</body>
</html>