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
        function PrintDiv() {    
           var divToPrint = document.getElementById('divToPrint');
           var popupWin = window.open('', '_blank', 'width=720,height=1080');
           popupWin.document.open();
           popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
            popupWin.document.close();
                }
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
            
            <table style="BORDER-COLLAPSE: collapse" borderColor=#33ccff 
          cellSpacing=0 cellPadding=2 width="50%" align=center 
          border=1>
                    
            <tr align=center> 
            <td height=18 colspan="3" bgColor=#d9e6f2>
            <font face=Verdana size=3><b>Ticket Details</b></font></td>
            </tr>
            <tr>
           
            <td height=23 align=center>
            <font face=Verdana size=2>Ticket ID</font></td>
           
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("t_id")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td height=23 align=center>
            <font face=Verdana size=2>User Name</font></td>
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("f_name")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td height=23 align=center>
            <font face=Verdana size=2>Movie Name</font></td>
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("m.name")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td height=23 align=center>
            <font face=Verdana size=2>Movie Center</font></td>
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("th.name")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td height=23 align=center>
            <font face=Verdana size=2>Movie Date</font></td>
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("t.date")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td height=23 align=center>
            <font face=Verdana size=2>Movie Time</font></td>
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("timeslot")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td height=23 align=center>
            <font face=Verdana size=2>No. of Tickets</font></td>
            <td height=23> <div align=center>
            <font face="Verdana, Arial, Helvetica" color=#515128 size=-1></font>
            <font face=Verdana size=2><%=rs.getString("no_of_tickets")%>&nbsp;&nbsp;</font></div></td>
            </tr>
            <tr>
            <td align=center width="50%" height=23><strong>
            <font face=Verdana size=2>Total Cost</font></strong></td>
            <td width="50%" height=23> <div align=center>
            &nbsp;<font face=Verdana  size=2><strong><%=rs.getString("total_cost")%></strong>&nbsp;&nbsp;</font></div></td>
            </tr>
            </table>
                     
            
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
                <center>
                    <input type="button" value="print" onClick="PrintDiv();" />
                </center>
                
                <a href="User_Home.jsp">Go to Home</a>
            </div>
    </body>
</html>
