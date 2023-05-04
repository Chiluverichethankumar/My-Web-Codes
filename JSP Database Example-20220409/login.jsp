<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid=request.getParameter("user"); 
session.putValue("userid",userid); 
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gitam","root","gitam@123"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"'"); 
if(rs.next()) 
{ 
	if(rs.getString(5).equals(pwd)) 
	{ 
	out.println("welcome"+userid); 
	} 
	else 
	{ 
	out.println("Invalid password try again"); 
	} 
} 
else
{ 
out.println("Invalid Username try again"); 
}  
%>