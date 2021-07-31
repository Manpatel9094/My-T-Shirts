<html>
<head>
    <title>Convert Table to PDF</title>
    <style>
        table
        {
            width: 300px;
            font: 17px Calibri;
        }
        table, th, td 
        {
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="tab">
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
                        <th><input type="text" class="form-control" placeholder="Action" disabled readonly=""></th>                        

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
							+"<td><center><a style="+"color:green"+" href="+"update_product_form.jsp?product_id="+rs.getString("product_id")+" ><button style="+"font-size:16px;background-color:white;width:100px"+"><i style="+"font-size:24px"+" class="+"fa"+">&#xf044;</i>&nbsp;Update</button></a>"
                                                                + "<a style="+"color:red"+" href="+"delete_product.jsp?product_id="+rs.getString("product_id")+" ><button style="+"font-size:16px;background-color:white;width:100px"
                                                                 +"><i style="+"font-size:24px"+" class="+"fa"+">&#xf014;</i>&nbsp;Delete</button></a>"
                                                        + "</center></td>"
							+"</tr>");
				
		  		
		  		
		  	}
		  	
		 	out.print("</table>");
		  	out.println("</body></html>");
		}
		catch(Exception e)
                {
			out.println(e);
                }
	%>    </div>

    <p>
        <input style="width:30%;height: 5%" type="button" value="Genrate PDF" 
            id="btPrint" onclick="createPDF()" />
    </p>
</body>
<script>
    function createPDF() {
        var sTable = document.getElementById('tab').innerHTML;

        var style = "<style>";
        style = style + "table {width: 100%;font: 17px Calibri;}";
        style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
        style = style + "padding: 2px 3px;text-align: center;}";
        style = style + "</style>";

        // CREATE A WINDOW OBJECT.
        var win = window.open('', '', 'height=700,width=700');

        win.document.write('<html><head>');
        win.document.write('<title>Profile</title>');   // <title> FOR PDF HEADER.
        win.document.write(style);          // ADD STYLE INSIDE THE HEAD TAG.
        win.document.write('</head>');
        win.document.write('<body>');
        win.document.write(sTable);         // THE TABLE CONTENTS INSIDE THE BODY TAG.
        win.document.write('</body></html>');

        win.document.close(); 	// CLOSE THE CURRENT WINDOW.

        win.print();    // PRINT THE CONTENTS.
    }
</script>
</html>