<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Admin Dashboard</title>
    </head>
    <body>
        <jsp:include page="../style.jsp" /> 
              <jsp:include page="menu.jsp" /> 
        <div class="w3-main" style="margin-left:300px;">
    

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

        <%@ page import="java.sql.*"%>
             <%
		try
		{
                    String product_id = request.getParameter("product_id");

                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_product where product_id="+product_id);  
                        while(rs.next()){
			%>
    
	
 
                        <div class="container register-form" style="padding-top: 120px;">
            <div class="form" style="background-color: white">
                
                <div style="background-color: black;height: 40px">
                    <h2> <center><lable style="color: white;">Update Product</lable></center></h2>
                    
                </div>
                 <div class="form-content">
                    <form action="update_product.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6">
                                <input type="hidden" class="form-control"style="width: 50%" name="product_id" placeholder="" value="<%=rs.getString("product_id") %>" readonly="" />
                            
                            <div class="form-group">
                                <input type="text" class="form-control" name="prod_name" placeholder="Enter product name" value="<%=rs.getString("prod_name") %>" required=""/>
                            </div>
                            <div class="form-group">
                                <select type="text" class="form-control" name="cat_name" placeholder="Select Category" value="" required="">
                                <option class="hidden"  selected disabled><%=rs.getString("cat_name") %></option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con2=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt2=con2.createStatement();  
                                            ResultSet rs2=stmt2.executeQuery("select cat_name from tbl_category where status='A'");
                                            
                                        while(rs2.next())
                                        {
                                            %><option><% out.println(rs2.getString("cat_name")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                            
                            <div class="form-group">
                                <select type="text" class="form-control" name="brand_name" placeholder="City *" value="" required="">
                                <option class="hidden"  selected disabled><%=rs.getString("brand_name") %></option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con3=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt3=con3.createStatement();  
                                            ResultSet rs3=stmt3.executeQuery("select brand_name from tbl_brand where status='A'");
                                            
                                        while(rs3.next())
                                        {
                                            %><option><% out.println(rs3.getString("brand_name")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                                
                            <div class="form-group">
                                <select type="text" class="form-control" name="size" placeholder="City *" value="" required="">
                                <option class="hidden"  selected disabled><%=rs.getString("size") %></option>
                                <%@ page import="java.sql.*"%>
                                <%
                                    try 
                                    {
                                            Class.forName("com.mysql.jdbc.Driver");  
                                            Connection con1=DriverManager.getConnection(  
                                            "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                                            Statement stmt1=con1.createStatement();  
                                            ResultSet rs1=stmt1.executeQuery("select size from tbl_size where status='A'");
                                            
                                        while(rs1.next())
                                        {
                                            %><option><% out.println(rs1.getString("size")); %></option><%
                                        }
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e);
                                    }

                                %></select>

                            </div>
                                <center><img style="width: 100px;height: 100px" src="../<% out.println(rs.getString("image"));%>" /></center>
                            <div class="form-group">
                                <input type="file" class="form-control" style="height: 42px" name="image" value="<%=rs.getString("image") %>" accept="Product_image/* required">
                            </div>    
                                
                        </div>
                        <div class="col-md-6">
                             <div class="form-group">
                                 <input type="number" class="form-control" name="cost_price" placeholder="Enter cost price" value="<%=rs.getString("cost_price") %>" required=""/>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-control" name="sell_price" placeholder="Enter sell price" value="<%=rs.getString("sell_price") %>" required=""/>
                            </div>
                            <div class="form-group">
                                <textarea type="text" class="form-control" name="description" placeholder="About product" rows="4" required=""><%=rs.getString("description") %></textarea>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="added_date" placeholder="" value="<%=rs.getString("added_date") %>" readonly=""/>
                            </div>
                            <div class="form-group">
                                <select type="text" class="form-control" name="available_or_not" placeholder="Availabile or not *" value="" required="">
                                <option class="hidden"  selected disabled><%=rs.getString("available_or_not") %></option>
                                <option>Y</option>
                                <option>N</option>
                                </select>

                            </div>
                                <div class="form-group">
                                <select type="text" class="form-control" name="status" placeholder="Availabile or not *" value="" required="">
                                <option class="hidden"  selected disabled><%=rs.getString("status") %></option>
                                <option>A</option>
                                <option>D</option>
                                </select>

                            </div>
                            
                             
                        </div>
                    </div><br>
                    <center><button type="submit" class="btnSubmit" style="background-color: black;color: white" value="submit" name="">Update</button></center>
                    </form>
                </div>
                
            </div>
</div>
                    
                      <%
		  	
		}}
		catch(Exception e)
                {
			out.println(e);
                }
	%>
 

        </div>
</body>
</html>
