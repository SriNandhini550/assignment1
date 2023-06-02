<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dxc","root","root");
	PreparedStatement stmt = conn.prepareStatement("select * from details");
	ResultSet rs = stmt.executeQuery();
	
		out.println("showing details");
	while(rs.next()){
		out.println("<html><body>");
		out.println("\n"+rs.getInt(2)+"-"+rs.getInt(1));
		out.println("</body></html>");
	}
}catch(ClassNotFoundException ex) {
	ex.printStackTrace();
}catch(SQLException ex){
	ex.printStackTrace();
}

	%>
</body>
</html>