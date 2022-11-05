<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SHOW Info</title>
        <link rel="stylesheet" href="style3.css">
       
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='Admin_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
     
    <a href='User_Panel.jsp'><img src="images/User_Panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a> 
    
    <br>
     <center>
         <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>  
             
         </div>
         <% session.setMaxInactiveInterval(2*60);%>   
         <h3>SHOW INFO</h3> 
             
          <table class="rwd-table">
          
               
           <%
           String theatreid=(String)request.getParameter("theatreid");
           
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
            
            try{
           
                Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                
                
            if(con!=null){
                stmt=con.createStatement();
                String rsql="select * from showdetails where theatreid='"+theatreid+"'";
                rs=stmt.executeQuery(rsql);
            %>
            <tr><td> Show ID  </td>
                <td> Theatre ID </td>
                    <td> Movie ID  </td>
                    <td> Time Slot  </td>
                    <td> Price/Seat </td>
                    <td> Seat Available </td></tr>
                   
                   
                    
            <%
                while(rs.next()){
            %>
            <tr><h3><td><%=rs.getString("showid")%></td>
                    <td><%=rs.getString("theatreid")%></td>
                    <td><%=rs.getString("movieid")%></td>
                    <td><%=rs.getString("timeslot")%></td>
                    <td><%=rs.getString("priceperseat")%></td>
                    <td><%=rs.getString("seatavailable")%> </td> 
                     
              
               <td><a href="Movie_info.jsp?movieid=<%=rs.getString("movieid") %>" style="color:yellow;text-decoration:none;">MOVIE DETAILS</a></td>
                      
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