<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Movie Info</title>
        <link rel="stylesheet" href="style3.css">
       
        <% String a_id="";%>
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
 .logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
    
</style>


    </head>
 <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
        <form name="f1" method="post" action=""> 
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
         <h3>Welcome : <%=a_id%></h3> 
             
          <table class="rwd-table">
          
               
           <%
           String movieid=(String)request.getParameter("admin_id");
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
            
            try{
           
                Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                
                
            if(con!=null){
                stmt=con.createStatement();
                String rsql="select * from theatredetails";
                rs=stmt.executeQuery(rsql);
            %>
            <tr><td> Theatre id  </td>
                <td> Theatre Name </td>
                    <td> Location  </td>
                    <td> District  </td>
                    <td> Number of Shows </td>
                    <td> Seating Capacity </td>
                    <td> Reservation Capacity </td></tr>
                    
                   
                    
            <%
                while(rs.next()){
            %>
            <tr><h3><td><%=rs.getString("theatreid")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("location")%></td>
                    <td><%=rs.getString("district")%></td>
                    <td><%=rs.getString("noofshows")%> </td>
                    <td><%=rs.getString("seatingcapacity")%> </td>
                    <td><%=rs.getString("reservationcapacity")%> </td> 
                     
              
                    <td><a href="UpdateTheatre.jsp?theatreid=<%=rs.getString("theatreid") %>" style="color:yellow;text-decoration:none;">EDIT</a></td>
                    <td><a href="DeleteTheatre.jsp?theatreid=<%=rs.getString("theatreid") %>" style="color:red;text-decoration:none;">DELETE</a></td></h3>
                    
            </tr>  
            
            <%  }}
            
                           
               if(con==null){con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
               
          </table>
        
           </form>
          
     </center>
    </body>
</html>