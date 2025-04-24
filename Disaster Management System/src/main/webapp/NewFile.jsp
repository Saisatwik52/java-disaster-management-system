<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ page import="java.sql.*"  %>
<link rel="stylesheet" href="Style123.css">
<style>
h1{
font-size:60px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
body{
background-color:  #f5f5f5;
}

    table {
        width: 70%;
        border-collapse: collapse;
        margin:4%;
    }

    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #87CEEB;
    }

    tr:hover {
        background-color: #f5f5f5;
    }
</style>
</head>
<body>
<h1 style=>Disaster Management System</h1>
<form action="SignUp.html" >
<input type="submit"  value="SignUp">
</form>

<form action="Login.html" >
<input type="submit" value="Login">
</form>
<form action="Disdetails.html" >
<input type="submit" value="Emergency Details">
</form>

<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/dms","root","tiger");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from admintable;");
    %><table border=1 class=center style="text-align:center">
      <thead>
          <tr>
             <th>DATE</th>
             <th>DISASTER</th>
             <th>PLACE</th>
             <th>CASULATIES</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("date1") %></td>
                <td><%=rs.getString("disaster1") %></td>
                <td><%=rs.getString("place1") %></td>
                <td><%=rs.getString("casualties") %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
    <h2 style={font-size:100px;}>Vounteer Details</h2>
    <table class="center">
  <tr>
    <th>Volunteer</th>
    <th>Contact Number</th>
    <th>Area</th>
    <th>Role</th>
  </tr>
  <tr>
    <td>Varun</td>
    <td>9556655489</td>
    <td>Kanpur</td>
    <td>Food Distributor</td>
  </tr>
  <tr>
    <td>Sujana</td>
    <td>8798965696</td>
    <td>Ladakh</td>
    <td>Shelter Manager</td>
  </tr>
  <tr>
    <td>Disha Patani</td>
    <td>6899856898</td>
    <td>Kedarnath</td>
    <td>Rescuer</td>
  </tr>
  <tr>
    <td>Siddarth</td>
    <td>9556789909</td>
    <td>Kanpur</td>
    <td>Food Distributor</td>
  </tr>
  <tr>
    <td>Uday</td>
    <td>8773839696</td>
    <td>Ladakh</td>
    <td>Rescuer</td>
  </tr>
  <tr>
    <td>Navya</td>
    <td>7868996898</td>
    <td>Kedarnath</td>
    <td>Rescuer</td>
  </tr>
  </table>
</body>
</html>