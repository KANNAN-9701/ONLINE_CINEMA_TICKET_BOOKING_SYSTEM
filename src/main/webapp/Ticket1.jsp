<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Booked</title>
        <script type="text/javascript">     
         
     </script>
     <style type="text/css">
     p {
	color:#25b32b;
	font-family: cursive;     
        }
        </style>
        
    </head>
        <body>
            <div id="divToPrint" >
                
         
  <br><br>
          <%  String t_id=(String)request.getParameter("t_id");
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
              ResultSet prs=null;
          
            
            
            
                Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                
                
            if(con!=null){
                stmt=con.createStatement();
                String sql="select max(t_id) as t_id from ticket where user_id='"+u_id+"'";
                rs=stmt.executeQuery(sql);
            %>
            <%
                while(rs.next()){
            %>
            
            <!-- int t_id=rs.getInt("t_id");%-->
            
     
  
  
    <%  
           
        
        
        
                stmt=con.createStatement();
    String rsql="select distinct th.name,t.t_id,f_name,m.name,m.lang,t.date,m.duration,t.no_of_tickets,t.total_cost,s.timeslot from theatredetails th, showdetails s, ticket  t, moviedetails m, userdetails u where u.userid='"+u_id+"' and  t_id='"+t_id+"' and t.m_id=m.movieid and t.user_id=u.userid and s.movieid=m.movieid and s.theatreid=th.theatreid";
    rs=stmt.executeQuery(rsql);
                %>
                  <center><p> Your Ticket(s) Confirmed!</p></center><br>
              
                  <%
                while(rs.next()){
                	
            %>
            
           
                     
            
            <%  }}
            
                           
               if(con==null){con.close();}
            }
           
            %>
            <br>
                <br>
                <center>
                    <strong>Powered by:</strong> <br>
        <img src="images/banner2.jpg" width="252" height="55">
                </center>
              
     </div>
            <br>
                 <br>
            <div>
                
                
                <a href="User_Home.jsp">Go to Home</a>
            </div>
    </body>
</html>
