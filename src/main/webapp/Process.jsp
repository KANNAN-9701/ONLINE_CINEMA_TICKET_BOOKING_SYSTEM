<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
            <title>Process</title>
         <style type="text/css">
a:link {
	color:#6747f2;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color:#6747f2;
}
a:hover {
	text-decoration: none;
	color:#6747f2;
        
}
a:active {
	text-decoration: none;
	color: #FF9900;
}
</style>
    </head>
    <body>
     <%
         
          String userid=request.getParameter("userid");
          String password=request.getParameter("password");
   

           
            
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
              
               
              Class.forName("com.mysql.jdbc.Driver");
                      
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                       
            
            
                stmt=con.createStatement();
                String rsql="select * from userdetails where userid='"+userid+"'and password='"+password+"'";
                rs=stmt.executeQuery(rsql);
                
             
              if (rs.next()) {
                  
              session.setAttribute("user_id",userid);
          
              response.sendRedirect("User_Panel.jsp");
               } 
            else {
            	
                 %>
       
                 <jsp:include page="Invalid.jsp"/>
                 <%
                 }
              
                 %>

    </body>
</html>
