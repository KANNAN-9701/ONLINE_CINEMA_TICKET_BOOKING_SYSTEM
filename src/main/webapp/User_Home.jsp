<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>       
    <head>
        
        <% String u_id="";%>
        <% u_id=(String)session.getAttribute("user_id");%>
        <% if(u_id==""||u_id==null)
            {
            response.sendRedirect("Login.jsp");
         }
        %>
        
        <title>Home Page</title>
         <script type="text/javascript">
function checklogin()
{
    if(f1.user_id.value=="")
{
alert("Please enter your username");
f1.user_id.focus();
return false;
}
else if(f1.password.value=="")
{
alert("Insert correct password");
f1.password.focus();
return false;
}
else
    {
        return true;
}
}
</script>
         <style type="text/css">
h3 {
	color:#ffffff;
	font-family: cursive;
        }
 .logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
        }
</style>
    </head>
    <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
     
    <a href='User_Panel.jsp'><img src="images/User_Panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a> 
    <br>
      <center>
           <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>  
             
         </div>
         <% session.setMaxInactiveInterval(5*60);%>   
         <h3>Welcome : <%=u_id%></h3></center>
         
  <marquee> 
        <img src="images/m4.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <img src="images/m5.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m6.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </marquee>
    <br>
    <br>
    <div class="info">
        <br><br><br><br><br><br>
        <img src="images/cards.png">
    </div>
      
    </center>
     </body>
</html>
