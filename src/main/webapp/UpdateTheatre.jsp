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
         
         String theatreid=(String)request.getParameter("theatreid");
         
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
          
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
               stmt=con.createStatement();
                String rsql="select * from theatredetails where theatreid='"+theatreid+"'";
                rs=stmt.executeQuery(rsql);
                while(rs.next()){
                	%>
                
    <div  class="form">
        <form name="f1" method="get" action="Theatreupdated.jsp">
        
                 <input type="text" placeholder="Theatre ID" name="theatreid" value="<%=rs.getString("theatreid") %>" required>
                <br><br>
                 <input type="text" placeholder="Theatre Name" name="name" value="<%=rs.getString("name") %>" required>
                <br><br>    
                <input type="text" placeholder="location" name="location" value="<%=rs.getString("location") %>" required>
                 <br><br>   
                <input type="text" placeholder="District" name="district" value="<%=rs.getString("district") %>" required>
                <br><br>
               <input type="text" placeholder="Number of Shows" name="noofshows" value="<%=rs.getString("noofshows") %>" required>
               <br><br>
               <input type="text" placeholder="Seating Capacity" name="seatingcapacity" value="<%=rs.getString("seatingcapacity") %>" required>
               <br><br>
               <input type="text" placeholder="Reservation Capacity" name="reservationcapacity" value="<%=rs.getString("reservationcapacity") %>" required>
               <br><br>
            
            <input class="buttom" name="Submit" tabindex="5" value="Update Theatre" type="submit">
        </form>
    </div>
    <%
    }
    
    %>
</body>
</html>
