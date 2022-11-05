<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Cancelled</title>
        
        <% String u_id="";%>
        <% u_id=(String)session.getAttribute("user_id");%>
        <% if(u_id==""||u_id==null)
            {
            response.sendRedirect("Login.jsp");
         }
        %>
       
         <style type="text/css">
             
a {
color: #CC0000;
}
             
a:link {
color: #CC0000;
}
a:visited {
color: #999999;
}
a:hover {
color: #FF3300;
}

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
    <a href='User_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='User_Panel.jsp'><img src="images/User_Panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
     <br>
     <center>
           <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>  
             
         </div>
         <% session.setMaxInactiveInterval(5*60);%>
         
         <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome : <%=u_id%></h3></center><br><br><br><br>
         
         <br>
            <%
                String t_id=request.getParameter("t_id");
                String m_id=request.getParameter("m_id");
                
              Connection con =null;
              
              
            try{
            
                Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                
                
            if(con!=null){
            	Statement stmt = con.createStatement();
            	 int ij=stmt.executeUpdate("update showdetails set seatavailable=seatavailable+(select no_of_tickets from ticket  where t_id='"+t_id+"'order by t_id desc limit 1) where movieid='"+m_id+"'");
                 String sql=("delete from ticket WHERE t_id='"+t_id+"'and user_id='"+u_id+"'");
                 
                 
                 //update and executes query
                 
                 int j =stmt.executeUpdate(sql);
               
             %>
             <center>
            <h3> Ticket Canceled.</h3>
            <br><br>
                 <h3>Your money will be refunded.</h3>
                 <br><br>
                 <h2 ><a href="User_Panel.jsp">Go Back.</a></h2>
               <% }

            if(con==null)
           {con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
        </center>
    </body>
          
</html>
    
