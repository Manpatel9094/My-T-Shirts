<%-- 
    Document   : update_cities
    Created on : 25 Nov, 2020, 12:06:28 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.*"%>
             <%
		try
		{
                    
                    String product_id = request.getParameter("product_id");
                    //String product_name = request.getParameter("proad_name");
                    //String status = request.getParameter("status");
                    
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        
                        String sql="delete from tbl_cart where product_id="+product_id;
                        PreparedStatement ps = con.prepareStatement(sql);
                          
                       
                       
                        int i= ps.executeUpdate();
                        if(i > 0)
                        {
                                response.sendRedirect("view_cart.jsp");
                         }
                }
                catch(Exception e){
                    out.println(e);
                }
             %>
                        
<html>
<body>
    <form action="view_cart.jsp">

</form>
</body></html>