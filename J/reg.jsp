<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %>

<%

String fname= request.getParameter("fname"); 
String lname= request.getParameter("lname"); 
String email=request.getParameter("email"); 
String user=request.getParameter("userid");
pwd=request.getParameter("pwd"); 
String mobile= request.getParameter("mobile");

Class.forName("com.mysql.jdbc.Driver");



java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1702/gitam", "root", "santo1225"); Statement st= con.createStatement(); int i=st.executeUpdate("insert into users values ('"+fname+"', '"+Iname+"', '"+email+"', '"+user+"', '" +pwd+"', '"+mobile+"')");

if(i>0)

{ out.println("You are sucessfully registered");

}

%>