<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />

       


    </head>
    
<body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='User_Registration.jsp'><img src="images/Register.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
      
    <br>
    <br> 
    <div class="form">
        <form   method="get" action="Useradded.jsp"> 
         <input type="text" placeholder="First Name" tabindex="1" required name="u_f_name" autocomplete="off">
         <input type="text" placeholder="Last Name" tabindex="1" required name="u_l_name" autocomplete="off">
         <input type="number" placeholder="Age" tabindex="1" required name="u_age" autocomplete="off"><br>
         <select name="u_gender">
            <option value="" selected hidden>Gender</option>
             <option value="male">Male</option>
             <option value="female">Female</option>
             <option value="others">Others</option>
         </select><br>
         <input type="password" placeholder="password" tabindex="1" required name="u_password" autocomplete="off">
         <textarea required placeholder="Address" name="u_address"></textarea>
         <input type="number" placeholder="PhoneNO" tabindex="1" required name="u_phoneno" autocomplete="off"> 
          
            <center>
                <input class="buttom" name="Submit" tabindex="5" value="Register" type="submit">
            </center>
        </form>
    </div>
   
         
            
             
</body>
</html>
