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
                    
                    String size_id = request.getParameter("size_id");
                    String brand_name = request.getParameter("size");
                    String status = request.getParameter("status");
                    
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        
                        String sql="Update tbl_size set status='D' where size_id="+size_id;
                        PreparedStatement ps = con.prepareStatement(sql);
                          
                       
                       
                        int i= ps.executeUpdate();
                        if(i > 0)
                        {
                                response.sendRedirect("view_sizes.jsp");
                         }
                }
                catch(Exception e){
                    out.println(e);
                }
             %>
                        
<html>
<body>
    <form action="view_sizes.jsp">

</form>
</body></html>