<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.time.LocalDate"%>
<%
String f_name=request.getParameter("f_name");
String l_name=request.getParameter("l_name");
String add=request.getParameter("add");
String city=request.getParameter("city");
String c_number=request.getParameter("c_number");
String email=request.getParameter("email");
String pass=request.getParameter("pass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();
LocalDate date = LocalDate.now();

int i=st.executeUpdate("insert into tbl_user(f_name,l_name,email_id,contact_no,address,city_name,password,added_date,role_of_user,status)values('"+f_name+"','"+l_name+"','"+email+"','"+c_number+"','"+add+"','"+city+"','"+pass+"','"+date+"','Customer','A')");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration Successfully')");
                out.println("location='index.jsp'");
                out.println("</script>");


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>