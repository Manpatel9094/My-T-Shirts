<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
       
    </head>
    <body>
              <jsp:include page="menu.jsp" /> 
        <div class="w3-main" style="margin-left:300px;">
            
    </body>
</html>

<style>
.filterable {
    margin-top: 15px;
}
.filterable .panel-heading .pull-right {
    margin-top: -20px;
}
.filterable .filters input[disabled] {
    background-color: transparent;
    border: none;
    cursor: auto;
    box-shadow: none;
    padding: 0;
    height: auto;
}
.filterable .filters input[disabled]::-webkit-input-placeholder {
    color: #333;
}
.filterable .filters input[disabled]::-moz-placeholder {
    color: #333;
}
.filterable .filters input[disabled]:-ms-input-placeholder {
    color: #333;
}
    </style>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div class="table-responsive" id="sailorTableArea">
<div class="container">
    <div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading" style="background-color: black;">
                <h3 class="panel-title">Products</h3>
                <div class="pull-right" style="padding-top: 0px">
                    <button style="height: 25px;" class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
                <div class="pull-right" style="padding-top: 0px">
                    <a href="PDF_Product.jsp"><button style="height: 25px;" class="btn btn-default btn-xs btn-filter"><i class="fa fa-list-alt"></i>&nbsp;Generate PDF</button></a>&nbsp;&nbsp;
                </div>
            </div>
            <%@ page import="java.sql.*"%>
             <%
		try
		{
                        Class.forName("com.mysql.jdbc.Driver");  
                        Connection con=DriverManager.getConnection(  
                        "jdbc:mysql://localhost:3306/t_shirt?useTimezone=true&serverTimezone=UTC","root","");  

                        Statement stmt=con.createStatement();  
                        ResultSet rs=stmt.executeQuery("select * from tbl_product");  
                        
			%>
    <table class="table table-striped table-bordered">
                <thead>
                    <tr class="filters" style="background-color: lightgray">
                        <th><input type="text" class="form-control" placeholder="Image" disabled readonly=""></th>
                        <th><input type="text" class="form-control" placeholder="Product Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Category" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Brand" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Description" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Size" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Added date" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Available (Y/N)" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Status (A/D)" disabled></th>

                    </tr>
                </thead>
                
                        <%
		  	while(rs.next())
		  	{
		  		
		  		
					out.println("<tr>");
                        %>
                        <td><center><img style="width: 80px;height: 80px" src="../<% out.println(rs.getString("image"));%>" /></center>
    </td>

                         <%
							out.println("<td>" + rs.getString("prod_name") + "</td>"
							+"<td>" + rs.getString("cat_name") + "</td>"
							+"<td>" + rs.getString("brand_name") + "</td>"
							+"<td>" + rs.getString("description") + "</td>"
							+"<td>" + rs.getString("size") + "</td>"
							+"<td>" + rs.getString("added_date") + "</td>"
							+"<td>" + rs.getString("available_or_not") + "</td>"
							+"<td>" + rs.getString("status") + "</td>"
							
							+"</tr>");
				
		  		
		  		
		  	}
		  	
		 	out.print("</table>");
		  	out.println("</body></html>");
		}
		catch(Exception e)
                {
			out.println(e);
                }
	%>
        
        </div>
    </div>
</div>
       

<script>
    /*
Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
*/
$(document).ready(function(){
    $('.filterable .btn-filter').click(function(){
        var $panel = $(this).parents('.filterable'),
        $filters = $panel.find('.filters input'),
        $tbody = $panel.find('.table tbody');
        if ($filters.prop('disabled') == true) {
            $filters.prop('disabled', false);
            $filters.first().focus();
        } else {
            $filters.val('').prop('disabled', true);
            $tbody.find('.no-result').remove();
            $tbody.find('tr').show();
        }
    });

    $('.filterable .filters input').keyup(function(e){
        /* Ignore tab key */
        var code = e.keyCode || e.which;
        if (code == '9') return;
        /* Useful DOM data and selectors */
        var $input = $(this),
        inputContent = $input.val().toLowerCase(),
        $panel = $input.parents('.filterable'),
        column = $panel.find('.filters th').index($input.parents('th')),
        $table = $panel.find('.table'),
        $rows = $table.find('tbody tr');
        /* Dirtiest filter function ever ;) */
        var $filteredRows = $rows.filter(function(){
            var value = $(this).find('td').eq(column).text().toLowerCase();
            return value.indexOf(inputContent) === -1;
        });
        /* Clean previous no-result if exist */
        $table.find('tbody .no-result').remove();
        /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
        $rows.show();
        $filteredRows.hide();
        /* Prepend no-result row if all rows are filtered */
        if ($filteredRows.length === $rows.length) {
            $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="'+ $table.find('.filters th').length +'">No result found</td></tr>'));
        }
    });
});
</script>
