<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="style2.css" media="all" />
<style type="text/css">
h3 {
	color:#ffffff;
	font-family: cursive;
        }
</style>
    </head>
    
<body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='Movie_info2.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='AdminLogin.jsp'><img src="images/Admin.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='feedback.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact.jsp'><img src="images/contact.gif"></a> 
    
    <br>
<center>
    <h3>
        Admin Login
    </h3>
</center>
    <br>
    
    
        <div  class="form">
                 
        <form name="f1" method="post" action="Process2.jsp">
                   
            <p class="contact"><label for="UserID">User Name : </label></p> 
            <input name="admin_id" placeholder="User ID" required="" tabindex="1" type="text" autocomplete="off"> 
             
            <p class="contact"><label for="password">Password : </label></p> 
            <input type="password" placeholder="Password" name="password" required="" autocomplete="off"> 
            
             <br>
             <br>
             <center>
                 <input class="buttom" name="Submit" tabindex="5" value="Login" type="submit">
             </center> 
                 
        </form>
        </div>
</body>
</html>
