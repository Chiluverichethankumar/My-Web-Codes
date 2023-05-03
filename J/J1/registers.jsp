
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

PreparedStatement ps=con.prepareStatement("insert into registeruser values(?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);

int i=ps.executeUpdate();

if(i>0)
out.print("You are successfully registered...");

}
catch(Exception e)
{
e.printStackTrace();
}
%>
