
<%@ page import="java.sql.*" %>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

PreparedStatement ps=con.prepareStatement("select * from registeruser");
ResultSet rs=ps.executeQuery();

while(rs.next())
{
out.print(rs.getString(1));
out.print("\t");
out.print(rs.getString(2));
out.print("\t");
out.print(rs.getString(3));
out.print("<br>");
}

}
catch(Exception e)
{
e.printStackTrace();
}
%>
