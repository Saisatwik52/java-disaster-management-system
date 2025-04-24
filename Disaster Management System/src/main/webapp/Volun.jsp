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
String name=request.getParameter("t15");
int pno=Integer.parseInt(request.getParameter("t16"));
String gender=request.getParameter("t17");
int age=Integer.parseInt(request.getParameter("t18"));
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dms","root","tiger");
	System.out.println("Established");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into volunteer values('"+name+"',"+pno+",'"+gender+"',"+age+")");
	if(i>0) out.println("Registered");
	else out.println("Not Inserted");
}
catch(SQLException e){
	out.println("SQL");
}
catch(ClassNotFoundException e1){
	out.println("SQL");
}


%>
</body>
</html>