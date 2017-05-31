<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Find Guitar</title>
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		
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
						numStrings : $('#numStrings').val().toString(),
						serialNumber : $('#serialNumber').val(),
						price : $('#price').val() 
				   };
				   var params = $.param(dataParams);
				   
				   $.post('${pageContext.request.contextPath}/queryAction_addGuitar', dataParams, function(rec){
					    if( rec.message == "success" ){
							alert("添加成功,该吉他已添加");
				    	}else{
				    		alert("添加失败,添加吉他失败，请刷新后重试");
				    	}
				   }, "json");
				   
				});
				
			});
	    </script>
</head>
<body>
		<div style="padding: 100px 100px 10px;">
		    <form method="post">
		    	<table>
		    		<tr>
		    			<td>
			    			<label for="serialNumber">SerialNumber:</label>
			    		</td>
		    			<td>
					        <input type="text" name="serialNumber" id="serialNumber">
		    			</td>
		    			<td>
		    				<label for="price">&emsp;Price:</label>
			    		</td>
		    			<td>
					        <input type="text" name="price" id="price">
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>
		    				  <label for="builder">Builder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		    			</td>
		    			<td>
					    	  <select id="builder" name="builder" >
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
					    	  <select id="type" name="type" >
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
		    				<select id="backWood" name="backWood" >
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
		    				<select id="topWood" name="topWood" >
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
					        <input type="text" id="model" name="model">
		    			</td>
		    			<td>
		    				<label for="numStrings">&emsp;NumStrings:&emsp;</label>
			    		</td>
		    			<td>
					        <input type="text" id="numStrings" name="numStrings">
		    			</td>
		    		</tr>
		    	</table>
		    </form>
		    <br>
		    <button id="btn" class="btn btn-default">添加</button>
		</div>
		
		
</body>
</html>