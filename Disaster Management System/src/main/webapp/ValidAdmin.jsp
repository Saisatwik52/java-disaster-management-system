<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import="java.sql.*"  %>
<%@ page session="false" %>  
</head>
<body>
<%
try {
	String uname=request.getParameter("t3");
	String pass=request.getParameter("t4");
	Class.forName("com.mysql.cj.jdbc.Driver");
	out.println("loaded");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dms","root","tiger");
	Statement st=con.createStatement();
	 ResultSet rs = st.executeQuery("select * from details where uname='"+uname+"' and password='"+pass+"'");
	 if (rs.next()) {
		 HttpSession session=request.getSession();  
	        session.setAttribute("username",uname); 
	         response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
	        response.setHeader("Pragma", "no-cache"); // HTTP 1.0
	        response.setDateHeader("Expires", 0); // Proxies
	        
          response.sendRedirect("AdminOps.html");
          
        } else {
            out.print("Invalid username or password");
            
        }
}
catch(SQLException e){
	out.print("SQL");
}
catch(ClassNotFoundException e1) {
	out.println("class");
}

%>
</body>
</html>