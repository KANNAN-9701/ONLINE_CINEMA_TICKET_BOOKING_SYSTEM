<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
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
    <a href='Movie_info.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='User_Registration.jsp'><img src="images/Register.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    
    <br>
    <br>
    
    <center>
        <h3>*Invalid Username Or Password </h3>
    </center>
     
        <div  class="form">
        
        <form name="f1" method="post" action="Process.jsp">
                  
            <p class="contact"><label for="UserID">User Name : </label></p> 
            <input name="userid" placeholder="User ID" required="" tabindex="1" type="text" autocomplete="off"> 
             
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
