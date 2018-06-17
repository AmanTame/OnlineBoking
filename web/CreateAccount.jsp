<%@ page language="java" contentType="text/html; "%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
    <br><br><br><br><br><br><br><br><br>
<center>
    <form action="CreateAccount.jsp" method="post">
UserName:<input type="text" name="username"><br>
Password<input type="text" name="password"><br>
Confirm Password<input type="text" name="Confirmpassword"><br>
User Type:<input type="text" name="usertype"><br>

<input type="submit" value="signup">
</form>
</center>
<%@page import="java.sql.*" %>
<%
String mysqlconnector="jdbc:mysql://localhost:3306/onlinebookingdbms";
Connection con=null;
Statement stmt=null;
String name=null;
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
	 String v1=request.getParameter("username");
	 String v2=request.getParameter("password");
         String v3=request.getParameter("usertype");
        
	 if(v1!=null&&v2!=null&&v3!=null){
stmt.executeUpdate("insert into login values('"+v1+"','"+v2+"','"+v3+"')");

%>
<%="data inserted" %>
<%} %>
</body>
</html>

