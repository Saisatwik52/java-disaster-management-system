<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import="java.sql.*"  %>
</head>
<body>
<%
String dat=request.getParameter("t10");
String plac=request.getParameter("t11");

try{
	String query="insert into admintable (date1,disaster1,place1) " + "select date,disaster,place from usertable where date = '"+dat+"' and place = '"+plac+"'";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dms","root","tiger");
	System.out.println("Established");
	Statement st=con.createStatement();
	int i=st.executeUpdate(query);
	if(i>0) out.println("Inserted");
	else out.println("Not Inserted");
}
catch(SQLException e){
	out.println("SQL");
}
catch(ClassNotFoundException e1){
	out.println("SQLhj");
}

%>
</body>
</html>