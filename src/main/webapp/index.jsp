<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>       
    <head>
         <% session.invalidate();%>
        <link rel="stylesheet" type="text/css" href="style2.css" media="all" />
        <title>Home Page</title>
         
         
    </head>
    <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
        <br>
        <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
     
    <a href='AdminLogin.jsp'><img src="images/Admin.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='User_Registration.jsp'><img src="images/Register.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a> 
    
    <br>
    <br>
    <marquee> 
        <img src="images/m1.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <img src="images/m2.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m3.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m4.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m5.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m6.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m7.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </marquee>
    <br>
    <br>
    <div class="info">
        <br><br><br><br><br><br>
        <img src="images/cards.png">
    </div> 
         <div  class="form" >
        
        <form name="f1" method="post" action="Process.jsp">
                  
             
            <input name="userid" placeholder="User ID" required type="text" autocomplete="off"> 
             <br>
            <br>
         
            <input type="password" placeholder="Password" name="password" required> 
            
            <br>
            <br>
              
                <input class="buttom" name="Submit" tabindex="5" value="Login" type="submit">
            
           
  
        </form>
        </div>
         
     </body>
</html>
