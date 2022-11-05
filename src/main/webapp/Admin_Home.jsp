<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>       
    <head>
        
        <% String a_id="";%>
        <% a_id=(String)session.getAttribute("admin_id");%>
        <% if(a_id==""||a_id==null)
            {
            response.sendRedirect("AdminLogin.jsp");
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='Admin_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info2.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Admin_Panel.jsp'><img src="images/Admin_panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a> 
    <br>
     <center>
         <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>  
             
         </div>
         <% session.setMaxInactiveInterval(2*60);%>   
         <h3>Welcome : <%=a_id%></h3> </center>
    <marquee> 
        <img src="images/m1.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <img src="images/m2.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m3.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="images/m4.jpg" height="150" width="150">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    </marquee>
      

     </body>
</html>
