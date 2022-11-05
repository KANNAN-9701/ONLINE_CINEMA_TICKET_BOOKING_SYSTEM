<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <% String a_id="";%>
         <% response.setHeader("cache-control","no-cache, no-store"); %>
        <% a_id=(String)session.getAttribute("admin_id");%>
        <% if(a_id==""||a_id==null)
            {
            response.sendRedirect("AdminLogin.jsp");
         }
        %>
          <style type="text/css">
        h3 {
	color:#ffffff;
	font-family: cursive;
        }
        
        a:link {
	color: #ffffff;
	text-decoration: none;
	font-size:20px;
}
a:visited {
	text-decoration: none;
	color:lightyellow;
}
a:hover {
	text-decoration: none;
	color:#ffffff;
        
}
a:active {
	text-decoration: none;
	color: #ffffff;
}

        b {
	color:#ffffff;
	font-family: cursive;     
        }
        
        .logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
        }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
      
      

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
  
         <% session.setMaxInactiveInterval(5*60);%>   
         <h3>Welcome : <%=a_id%></h3><br><br>
         
        
        <table width="464" border="0" cellspacing="2" cellpadding="2" bgcolor="#292929">
  <tr>
      <td><a href="AddNewTheatre.jsp"><b>--> Add Theatre Details</b></a></td></tr>
    <tr><td></td></tr>  
    <tr><td><a href="Theatre_info.jsp"><b>--> Show/Edit Theatre Details</b></a></td></tr>
    <tr><td></td></tr>
  
      <tr><td><a href="AddNewShow.jsp"><b>--> Add Show Details</b></a></td></tr>
      <tr><td></td></tr>
      <tr><td><a href="Show_info.jsp"><b>--> Show/Edit Show Details</b></a></td></tr>
      <tr><td></td></tr>
      
      <tr><td><a href="AddNewMovie.jsp"><b>--> Add Movie Details</b></a></td></tr>
      <tr><td></td></tr>
     
</table>
    </center>
    </body>
</html>
