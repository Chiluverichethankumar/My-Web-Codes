<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>

<%

String fname= request.getParameter("fname"); 
String lname= request.getParameter("lname"); 
String email=request.getParameter("email"); 
String user=request.getParameter("userid");
String pwd=request.getParameter("pwd"); 


Class.forName("com.mysql.jdbc.Driver");

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gitam", "root", ""); 
Statement st = con.createStatement(); 
int i=st.executeUpdate("insert into users values ('"+fname+"', '"+lname+"', '"+email+"', '"+user+"', '"+pwd+"')");

if(i>0)

{ out.println("You are sucessfully registered");

}

%>