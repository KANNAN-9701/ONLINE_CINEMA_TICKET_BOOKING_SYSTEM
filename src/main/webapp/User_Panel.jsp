<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <% String u_id="";%>
        <% response.setHeader("cache-control","no-cache, no-store"); %>
        <% u_id=(String)session.getAttribute("user_id");%>
       
        <% if(u_id==""||u_id==null)
            {
            response.sendRedirect("Login.jsp");
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
        <title>User Panel</title>
      
    </head>
        <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
    <a href='User_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 

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
          <%
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
          
            
            try{
           Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                       
            if(con!=null){
                stmt=con.createStatement();
                String sql="select f_name from Userdetails where userid='"+u_id+"'";
                rs=stmt.executeQuery(sql);
            %>
            <center>
            <%
                while(rs.next()){
            %>
            
            <% String u_name=rs.getString("f_name");%>
        <table width="464" border="0" cellspacing="2" cellpadding="2" bgcolor="#292929">
  <tr>
      <td><a href="Theatre_info1.jsp"><b>--> View Theatre Details</b></a></td></tr>
  <tr><td></td></tr>
  <tr>
      <td><a href="ticket_Details.jsp"><b>--> Ticket Details</b></a></td></tr>
  <tr><td></td></tr>
  <tr>
      <td><a href="Cancel_ticket.jsp?u_name=<%=u_name%>"><b>--> Cancel Movie Ticket</b></a></td>
  </tr>
  <tr><td></td></tr>
   
  
  
    <%  }}
            
                           
               if(con==null){con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
              
          </table>
            </center>
    </body>
</html>
