<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Find Guitar</title>
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
		<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.4.js">
		</script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js">
		</script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
		<style type="text/css">
			form table tr td {
				padding:5px;
			}
			form table tr thead {
				padding:5px;
			}
		</style>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#example').dataTable( {
				  //"ajax": "${pageContext.request.contextPath}/queryAction_search",
					"ajax": {
					    "url": "${pageContext.request.contextPath}/queryAction_search",
					    "type": "POST",
					    "data": function ( d ) {
					    	d.builder = $('#builder').val(),
					    	d.model = $('#model').val(),
					    	d.type = $('#type').val(),
					    	d.backWood = $('#backWood').val(),
					    	d.topWood = $('#topWood').val(),
					    	d.numStrings = $('#numStrings').val().toString()
					    }
					},
				  	"deferRender": true,
				  	"searching": true,
			        "columns": [
	                    { "data": "builder", align:"center" },
	                    { "data": "model" },
	                    { "data": "type" },
	                    { "data": "numStrings" },
	                    { "data": "backWood" },
	                    { "data": "topWood" },
	                    { "data": "price" }
	                ],
			        "oLanguage": {
			            "sLengthMenu": "每页显示 _MENU_ 条",
			            "sZeroRecords": "没有找到符合条件的数据",
			            "sInfo": "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
			            "sInfoEmpty": "没有记录",
			            "sInfoFiltered": "(从 _MAX_ 条记录中过滤)",
			            "sSearch": "搜索",
			            "sProcessing": "数据加载中...",
			            "oPaginate": {
			                "sFirst": "首页",
			                "sPrevious": "上一页",
			                "sNext": "下一页",
			                "sLast": "尾页"
			            }
			        }
				});
			} );
		
			$(function(){
				
				$("#btn").click(function(){
					//alert("Submitted");
					var table = $('#example').DataTable();
					table.ajax.reload();
					 
// 					var dataParams = {
// 						builder : $('#builder').val(),
// 						model : $('#model').val(),
// 						type : $('#type').val(),
// 						backWood : $('#backWood').val(),
// 						topWood : $('#topWood').val(),
// 						numStrings : $('#numStrings').val().toString()
// 				   };
					
					//第二种
// 					var params = $.param(dataParams);
// 					var url = '${pageContext.request.contextPath}/queryAction_search?'+ params;
					
// 					var table = $('#example').DataTable();
					
// 					table.ajax.url( url ).load();
					
					//第三种
// 					var table2 = $('#example').dataTable();
// 					var oSettings = table2.fnSettings();
// 					$.post('${pageContext.request.contextPath}/queryAction_search', dataParams, function(json)
// 					{
// 				    	table2.oApi._fnClearTable(oSettings);
// 					    for (var i=0; i<json.data.length; i++)
// 					    {
// 					        table2.oApi._fnAddData(oSettings, json.data[i]);
// 					    }
// 					    oSettings.aiDisplay = oSettings.aiDisplayMaster.slice();
// 					    table2.fnDraw();
// 					},"json");
				   
				});
				
			});
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
		    <br><br><br>
			<table id="example" class="display" cellspacing="0" width="100%">
		        <thead>
		            <tr>
		                <th>Builder</th>
		                <th>Model</th>
		                <th>Type</th>
		                <th>NumStrings</th>
		                <th>BackWood</th>
		                <th>TopWood</th>
		                <th>Price</th>
		            </tr>
		        </thead>
		        <tfoot>
		            <tr>
		                <th>Builder</th>
		                <th>Model</th>
		                <th>Type</th>
		                <th>NumStrings</th>
		                <th>BackWood</th>
		                <th>TopWood</th>
		                <th>Price</th>
		            </tr>
		        </tfoot>
		    </table>
		</div>

		
		
</body>
</html>