<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Added</title>
        <style type="text/css">
a:link {
	color:#ffffff;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color:#ffffff;
}
a:hover {
	text-decoration: none;
	color:#ffffff;
        
}
a:active {
	text-decoration: none;
	color: #ffffff;
}
h3 {
	color:#ffffff;
	font-family: cursive;
        }
</style>
    </head>
    <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info2.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Admin_Panel.jsp'><img src="images/Admin_panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    
        <br>
            <%
                String t_name=request.getParameter("t_name");
                String location=request.getParameter("location");
                String district=request.getParameter("district");
                String noofshows=request.getParameter("noofshows");
                String seatingcapacity=request.getParameter("seatingcapacity");
                String reservationcapacity=request.getParameter("reservationcapacity");
                
              Connection con =null;
              Statement stmt = null;
              
              
            try{
           
              Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");  
                
            if(con!=null){
                 stmt=con.createStatement();
                 
                 //insert and executes query
                 int i =stmt.executeUpdate("insert into theatredetails(name,location,district,noofshows,seatingcapacity,reservationcapacity)values('"+t_name+"','"+location+"','"+district+"','"+noofshows+"','"+seatingcapacity+"','"+reservationcapacity+"')");        
               
                 %>
                 <center>
            <h3> Theatre Details Added.</h3>
            <br><br>
                 <h3><a href='AddNewTheatre.jsp'>Click Here To Add Another Theatre</a></h3>
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
