<%@page import="java.sql.DriverManager "%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement "%> 
<%@page import="java.sql.Connection"%>

<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2> <table align="center" cellpadding="5" cellspacing="5" border="1"> <tr>

</tr>

<tr bgcolor="#A52A2A">

<th>First Name</th>

<th>Last Name</th>

<th>Email ID</th>

<th><b>User ID</th>

<th>Password</th> 

</tr>

<%

try{ 
String id = request.getParameter("userid");

Class.forName("com.mysql.jdbc.Driver");

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gitam", "root", "");

Statement st=con.createStatement(); 
String sql = "select * from users";

ResultSet rs= st.executeQuery(sql); 
while(rs.next()) {

%>

<tr bgcolor="#DEB887">

<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td> 
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>


</tr>

<%

}

} catch (Exception e) { 

e.printStackTrace();

}

%>

</table>