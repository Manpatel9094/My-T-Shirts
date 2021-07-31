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
                        String product_id=request.getParameter("product_id");
                        String prod_name=request.getParameter("prod_name");
                        String cat_name=request.getParameter("cat_name");
                        String brand_name=request.getParameter("brand_name");
                        String cost_price=request.getParameter("cost_price");
                        String sell_price=request.getParameter("sell_price");
                        String size=request.getParameter("size");

                        String img=request.getParameter("image");
                        img="Product_image/"+img;

                        String description=request.getParameter("description");
                        String available_or_not = request.getParameter("available_or_not");
                        String status = request.getParameter("status");
             
                    
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        
                        String sql="Update tbl_product set prod_name=?,cat_name=?,brand_name=?,cost_price=?,sell_price=?,size=?,image=?,description=?,available_or_not=?,status=? where product_id="+product_id;
                        PreparedStatement ps = con.prepareStatement(sql);
                          
                        ps.setString(1, prod_name);
                        ps.setString(2, cat_name);
                        ps.setString(3, brand_name);
                        ps.setString(4, cost_price);
                        ps.setString(5, sell_price);
                        ps.setString(6, size);
                        ps.setString(7, img);
                        ps.setString(8, description);
                        ps.setString(9, available_or_not);
                        ps.setString(10, status);
                       
                        int i= ps.executeUpdate();
                        if(i > 0)
                        {
                                response.sendRedirect("View_product.jsp");
                         }
                }
                catch(Exception e){
                    out.println(e);
                }
             %>
                        
<html>
<body>
    <form action="View_product.jsp">

</form>
</body></html>