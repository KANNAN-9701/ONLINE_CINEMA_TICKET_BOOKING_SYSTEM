<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <% String a_id="";%>
        <% a_id=(String)session.getAttribute("admin_id"); %>
        <% if(a_id==""||a_id==null)
            {
            response.sendRedirect("AdminLogin.jsp");
         }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Movies</title>
        <style type="text/css">
h3 {
	color:#ffffff;
	font-family: cursive;
        }
 .logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
        }
</style>
        <link rel="stylesheet" type="text/css" href="style2.css" media="all" />
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
         
         <%
         
         String movieid=(String)request.getParameter("movieid");
         
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
          
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
               stmt=con.createStatement();
                String rsql="select * from moviedetails where movieid='"+movieid+"'";
                rs=stmt.executeQuery(rsql);
                while(rs.next()){
                	%>
                
    <div  class="form">
        <form name="f1" method="get" action="Movieupdated.jsp">
                  <input type="text" placeholder="Movie ID" name="movieid" value="<%=rs.getString("movieid") %>" required>
                <br><br>
                <input type="text" placeholder="Movie Name" name="m_name" value="<%=rs.getString("name") %>" required>
                <br><br>    
                <input type="text" placeholder="Language" name="lang" value="<%=rs.getString("lang") %>" required>
                 <br><br>   
                <input type="text" placeholder="Duration" name="duration" value="<%=rs.getString("duration") %>" required>
                <br><br>
               <input type="text" placeholder="cost" name="cost" value="<%=rs.getString("cost") %>" required>
               <br><br>
            
            <input class="buttom" name="Submit" tabindex="5" value="Update Movie" type="submit">
        </form>
    </div>
    <%
    }
    
    %>
</body>
</html>
