<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import="java.sql.*" %>
</head>
<body>
<%
int cas=Integer.parseInt(request.getParameter("t14"));
String dis=request.getParameter("t15");
String place=request.getParameter("t16");
try{
	 String query = "update admintable set casualties = " + cas + " WHERE disaster1 = '" + dis + "' and place1='"+place+"'";
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