<%@page import="java.sql.*,java.util.*"%>
<%
String brand_name=request.getParameter("brand_name");
String status=request.getParameter("status");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into tbl_brand(brand_name,status)values('"+brand_name+"','"+status+"')");
if(i>0)
{
    response.sendRedirect("view_brands.jsp");
}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>