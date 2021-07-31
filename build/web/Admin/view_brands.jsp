<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <h3 class="panel-title">Brands</h3>
                <div class="pull-right" style="padding-top: 0px">
                    <button style="height: 25px;" class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
                <div class="pull-right" style="padding-top: 0px">
                    <a href="Add_brand_form.jsp"><button style="height: 25px;" class="btn btn-default btn-xs btn-filter"><i class="fa fa-plus"></i>&nbsp;Add Brand</button></a>&nbsp;&nbsp;
                </div>
                <div class="pull-right" style="padding-top: 0px">
                    <a href="PDF_brands.jsp"><button style="height: 25px;" class="btn btn-default btn-xs btn-filter"><i class="fa fa-list-alt"></i>&nbsp;Generate PDF</button></a>&nbsp;&nbsp;
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
                        ResultSet rs=stmt.executeQuery("select * from tbl_brand");  
                        
			%>
                        <table  class="table table-bordered table-responsive-md table-striped">
                <thead>
                    <tr class="filters" style="background-color: lightgray">
                        <th><input type="text" class="form-control"  placeholder="#" disabled></th>
                        <th><input type="text" class="form-control"  placeholder="brand Name" disabled></th>
                        <th><input type="text" class="form-control"  placeholder="Status" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Action" disabled readonly=""></th>                        
                </thead>
                        <%
		  	while(rs.next())
		  	{
		  		
		  		
					out.println("<tr>"
							+"<td>" + rs.getString("brand_id") + "</td>"
							+"<td>" + rs.getString("brand_name") +"</td>"
							+"<td>" + rs.getString("status") + "</td>"
							+"<td><a style="+"color:green"+" href="+"update_brand_form.jsp?brand_id="+rs.getString("brand_id")+" ><button style="+"font-size:16px;background-color:white"+"><i style="+"font-size:24px"+" class="+"fa"+">&#xf044;</i>&nbsp;Update</button></a>&nbsp&nbsp"
                                                                + "<a style="+"color:red"+" href="+"delete_brand.jsp?brand_id="+rs.getString("brand_id")+" ><button style="+"font-size:16px;background-color:white"+"><i style="+"font-size:24px"+" class="+"fa"+">&#xf014;</i>&nbsp;Delete</button></a>"
                                                        + "</td>"
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