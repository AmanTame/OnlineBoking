<%-- 
    Document   : full-width
    Created on : 02-May-2018, 16:45:00
    Author     : zewd
--%>

<%@page import="com.au.bookroom.Registeration2"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ambo University</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="../Home.jsp">Ambo University</a></h1>
    <p>Register Here</p>
    <div id="topnav">
      <ul>
          <li><a href="../Home.jsp">Home</a></li>
        
        <li><a class="active" href="full-width.jsp">Membership</a></li>
        
        
      </ul>
    </div>
    
  </div>
</div>
<div class="wrapper col2">
  <div id="breadcrumb">
    
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
   
      <form action="full-width.jsp" method="post">
     Customer ID<h1><input type="text" name="CustomerId" value="" /></h1>
     First Name<h1><input type="text" name="FirstName" value="" /></h1>
     Last Name <h2><input type="text" name="LastName" value="" /></h2>
     Tel<h4><input type="text" name="Tel" value="" /></h4>
     Email<h5><input type="text" name="Email" value="" /></h5>
     Location<h6><input type="text" name="Location" value="" /></h6>
    <input type="submit"  value="Register" /> 
    </form>
    <%@page import="java.sql.*" %>
<%
    
/* String mysqlconnector="jdbc:mysql://localhost:3306/onlinebookingdbms2";
Connection con=null;
Statement stmt=null;
String name=null;
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();*/
	 try{
         String v1=request.getParameter("CustomerId");
	 String v2=request.getParameter("FirstName");
         String v3=request.getParameter("LastName");
         String v4=request.getParameter("Tel");
	 String v5=request.getParameter("Email");
         String v6=request.getParameter("Location");
	 if(v1!=null&&v2!=null&&v3!=null&&v4!=null&&v5!=null&&v6!=null)
         {
//stmt.executeUpdate("insert into customerreg values("+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"')");
//stmt.executeUpdate("insert into customerreg values('"+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"')");
Registeration2 r=new Registeration2();
r.register_customer(v1, v2, v3, v4, v5, v6);
out.println("orrect");
         }
         else if(v1==null&&v2==null&&v3==null&&v4==null&&v5==null&&v6==null){
JOptionPane.showMessageDialog(null,"stop");
}
}
         catch(Exception e){}

%>
       </body>
</html>
