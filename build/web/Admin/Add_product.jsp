<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String prod_name=request.getParameter("prod_name");
String cat_name=request.getParameter("cat_name");
String brand_name=request.getParameter("brand_name");
String cost_price=request.getParameter("cost_price");
String sell_price=request.getParameter("sell_price");
String size=request.getParameter("size");

String img=request.getParameter("image");
img="Product_image/"+img;

String description=request.getParameter("description");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();
LocalDate date = LocalDate.now();

int i=st.executeUpdate("insert into tbl_product(prod_name,cat_name,brand_name,cost_price,sell_price,size,image,description,added_date,available_or_not,status)values('"+prod_name+"','"+cat_name+"','"+brand_name+"','"+cost_price+"','"+sell_price+"','"+size+"','"+img+"','"+description+"','"+date+"','Y','A')");
if(i>0)
{
    out.println("<script type=\"text/javascript\">");
                out.println("alert('Product Added Successfully')");
                //out.println("location='index.jsp'");
                out.println("</script>");
    response.sendRedirect("View_product.jsp");
}
else
{
    out.println("<script type=\"text/javascript\">");
                out.println("alert('Product Added Unsuccessfully')");
                //out.println("location='index.jsp'");
                out.println("</script>");
                    response.sendRedirect("add_product_form.jsp");

}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>