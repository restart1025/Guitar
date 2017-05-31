<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Find Guitar</title>
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
		
<!-- 		<script src="//code.jquery.com/jquery-1.12.4.js"></script> -->
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
		
		<style type="text/css">
			table tr td {
				padding:5px;
			}
			table tr thead {
				padding:5px;
			}
		</style>
		
		<script type="text/javascript">
			$(function(){
				
				$("#btn").click(function(){
					//alert("Submitted");
					var dataParams = {
						builder : $('#builder').val(),
						model : $('#model').val(),
						type : $('#type').val(),
						backWood : $('#backWood').val(),
						topWood : $('#topWood').val(),
						numStrings : $('#numStrings').val().toString()
				   };
				   var params = $.param(dataParams);
				   //console.log(params);
				   
				   $.post('${pageContext.request.contextPath}/queryAction_search', dataParams, function(rec){
					   var _html = "<br><table border='1' cellpadding='10'><thead><tr>" + 
							                "<th>Builder</th>" + 
							                "<th>Model</th>" + 
							                "<th>Type</th>" + 
							                "<th>NumStrings</th>" + 
							                "<th>BackWood</th>" + 
							                "<th>TopWood</th>" + 
							                "<th>Price</th>" + 
							                "<th>Operation</th>" + 
							        "</tr></thead>";
					   if( rec.data.length > 0 ){
						   var data = rec.data;
						   for( var i in data ){
							   _html = _html + 
							   			"<tr>" + 
								        	"<td>" + data[i].builder + "</td>" + 
								            "<td>" + data[i].model + "</td>" + 
								            "<td>" + data[i].type + "</td>" + 
								            "<td>" + data[i].numStrings + "</td>" + 
								            "<td>" + data[i].backWood + "</td>" + 
									        "<td>" + data[i].topWood + "</td>" + 
								            "<td>" + data[i].price + "</td>" + 
								            "<td><a href='javascript:;' onclick=deletePlan('" + data[i].serialNumber + "')>删除</a></td>" +
								        "</tr>";
						   }
								        
					   }
					   _html = _html + "</table>";
					   $('#tableId')["0"].innerHTML = _html;
				   }, "json");
				   
				});
				
			});
			//删除操作
			function deletePlan(event){
					$.post('${pageContext.request.contextPath}/queryAction_deleteGuitar', {serialNumber : event}, function(res)
 					{
 				    	if( res.message == "success" ){
							alert("删除成功, 该吉他已删除");
 				    	}else{
 				    		alert("删除失败, 删除吉他失败，请刷新后重试");
 				    	}
 				    	$("#btn").click();
 					},"json");
			};
	    </script>
</head>
<body>
		<div style="padding: 100px 100px 10px;">
		    <form class="bs-example bs-example-form" role="form" method="post">
		    	<table>
		    		<tr>
		    			<td>
		    				  <label for="builder">Builder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		    			</td>
		    			<td>
					    	  <select id="builder" name="builder" class="selectpicker" data-hide-disabled="true">
			                       <option value="FENDER">Fender</option>
			                       <option value="MARTIN">Martin</option>
			                       <option value="GIBSON">Gibson</option>
			                       <option value="COLLINGS">Collings</option>
			                       <option value="OLSON">Olson</option>
			                       <option value="RYAN">Ryan</option>
			                       <option value="PRS">PRS</option>
			                       <option value="ANY">Unspecified</option>
			                  </select>
		    			</td>
		    			<td>
			                  <label for="type">&emsp;Type:&emsp;</label>
		    			</td>
		    			<td>
					    	  <select id="type" name="type" class="selectpicker" data-hide-disabled="true">
			                       <option value="ACOUSTIC">acoustic</option>
			                       <option value="ELECTRIC">electric</option>
			                  </select>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>
		    	  			<label for="backWood">BackWood:&emsp;</label>
		    			</td>
		    			<td>
		    				<select id="backWood" name="backWood" class="selectpicker" data-hide-disabled="true">
		                       <option value="INDIAN_ROSEWOOD">Indian_Rosewood</option>
		                       <option value="BRAZILIAN_ROSEWOOD">Brazilian_Rosewood</option>
		                       <option value="MAHOGANY">Mahogany</option>
		                       <option value="MAPLE">Maple</option>
		                       <option value="COCOBOLO">Cocobolo</option>
		                       <option value="CEDAR">Cedar</option>
		                       <option value="ADIRONDACK">Adirondack</option>
		                       <option value="ALDER">Alder</option>
		                       <option value="SITKA">Sitka</option>
		                  </select>
		    			</td>
		    			<td>
		    				<label for="topWood">&emsp;TopWood:&emsp;</label>
		    			</td>
		    			<td>
		    				<select id="topWood" name="topWood" class="selectpicker" data-hide-disabled="true">
		                       <option value="INDIAN_ROSEWOOD">Indian_Rosewood</option>
		                       <option value="BRAZILIAN_ROSEWOOD">Brazilian_Rosewood</option>
		                       <option value="MAHOGANY">Mahogany</option>
		                       <option value="MAPLE">Maple</option>
		                       <option value="COCOBOLO">Cocobolo</option>
		                       <option value="CEDAR">Cedar</option>
		                       <option value="ADIRONDACK">Adirondack</option>
		                       <option value="ALDER">Alder</option>
		                       <option value="SITKA">Sitka</option>
		                  </select>
		    			</td>
		    		</tr>
		    		<tr>
			    		<td>
			    			<label for="model">Model:&emsp;</label>
			    		</td>
		    			<td>
					        <input type="text" id="model" name="model" class="form-control">
		    			</td>
		    			<td>
		    				<label for="numStrings">&emsp;NumStrings:&emsp;</label>
			    		</td>
		    			<td>
					        <input type="text" id="numStrings" name="numStrings" class="form-control">
		    			</td>
		    		</tr>
		    	</table>
		    </form>
		    <br>
		        <button id="btn" class="btn btn-default">提交</button>
		    <br>
		    <div id="tableId">
		    	
		    </div>
<!-- 			<table id="example" class="display" cellspacing="0" width="100%"> -->
<!-- 		        <thead> -->
<!-- 		            <tr> -->
<!-- 		                <th>Builder</th> -->
<!-- 		                <th>Model</th> -->
<!-- 		                <th>Type</th> -->
<!-- 		                <th>NumStrings</th> -->
<!-- 		                <th>BackWood</th> -->
<!-- 		                <th>TopWood</th> -->
<!-- 		            </tr> -->
<!-- 		        </thead> -->
<!-- 		    </table> -->
		</div>
		
		
</body>
</html>