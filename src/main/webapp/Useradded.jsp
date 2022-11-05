<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Added</title>
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
    <a href='Movie_info.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='User_Registration.jsp'><img src="images/Register.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    
        <br>
        
            <%
                String u_f_name=request.getParameter("u_f_name");
                String u_l_name=request.getParameter("u_l_name");
                String u_age=request.getParameter("u_age");
                String u_gender=request.getParameter("u_gender");
                String u_password=request.getParameter("u_password");
                String u_address=request.getParameter("u_address");
                String u_phoneno=request.getParameter("u_phoneno");
            
                
              Connection con =null;
              Statement stmt = null;
              
              
            try{
            
                Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/octbs","root","");
                
                
            if(con!=null){
                 stmt=con.createStatement();
                 
                 //insert and executes query
                 int i =stmt.executeUpdate("insert into userdetails(password,f_name,l_name,age,gender,address,phoneno)values('"+u_password+"','"+u_f_name+"','"+u_l_name+"','"+u_age+"','"+u_gender+"','"+u_address+"','"+u_phoneno+"')");       
                 ResultSet j =stmt.executeQuery("select * from userdetails order by userid desc limit 1;");
                 while(j.next()){
                 %>
                 <center><br><br>
                 <h3> Registration Successful.</h3>
            <h3>Your USERID IS  :<%=j.getString("userid")%></h3>
            
            <br><br>
                 <h3><a href='Login.jsp'>Click Here To Login</a></h3>
                 
                 <%
                 }}
           if(con==null)
           {con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
        </center>
    </body>
          
</html>
