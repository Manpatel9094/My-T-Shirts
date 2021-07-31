<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.time.LocalDate"%>
<%

String email_id=(String) session.getAttribute("user");
String product_id=request.getParameter("product_id");
//String quantity="2";
String price=request.getParameter("price");
//out.print(email_id);
//out.print(product_id);
//out.print(quantity);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();

//out.print("insert into tbl_order_details(email_id,product_id,quantity,price,status)values('"+email_id+"','"+product_id+"','1','650','A');");
int i=st.executeUpdate("insert into tbl_order_details(email_id,product_id,quantity,price,status)values('"+email_id+"','"+product_id+"','1','"+price+"','A');");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('place order successfully')");
                out.println("location='order_status.jsp'");
                out.println("</script>");


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>