<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Find Guitar</title>
		
		<!-- jquery样式 -->
<!-- 		<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.4.js"></script> -->
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		
		<!-- bootstrap样式 -->
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- 表格datatables样式 -->
		<link href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
		
		<!-- bootstrap-select的js样式 -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
		
		<!-- sweetalert弹出框的js样式 -->
		<link href="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.css" rel="stylesheet">
		<script src="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.js"></script>
		
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
				$('.selectpicker').selectpicker({
				  width : '100%'
				});
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
	                    { "data": "builder" },
	                    { "data": "model" },
	                    { "data": "type" },
	                    { "data": "numStrings" },
	                    { "data": "backWood" },
	                    { "data": "topWood" },
	                    { "data": "price" },
			            { "data": "serialNumber" }
	                ],
                    "columnDefs": [ {
                        "targets": -1,//最后一列
                        "render": function(data, type, row, meta) {
                            return '<a href="javascript:;" class="btn red"'
                            		+ 'onclick=deletePlan("' + row.serialNumber + '")>删除</a>';
                        }
                    } ],
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
		
				//删除操作
				function deletePlan(event){
// 					alert(event);
					swal({
					  title: "删除提示",
					  text: "你确认要删除此记录吗?",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonColor: "#DD6B55",
					  confirmButtonText: "确认",
					  cancelButtonText: "取消",
					  closeOnConfirm: false,
					  closeOnCancel: true,
					  showLoaderOnConfirm: true
					},
					function(){
						$.post('${pageContext.request.contextPath}/queryAction_deleteGuitar', {serialNumber : event}, function(res)
	 					{
	 				    	var table = $('#example').DataTable();
	 						table.ajax.reload();
	 				    	if( res.message == "success" ){
								swal("删除成功!", "该吉他已删除", "success");
	 				    	}else{
	 				    		swal("删除失败", "删除吉他失败，请刷新后重试", "error");
	 				    	}
	 					},"json");
					});
				};
			$(function(){
				
				//查询按钮点击事件
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
				//添加按钮点击事件
				$('#addbtn').click(function(){
					$('#myModal').modal('show');
				});
				//添加表单提交
				$("#addguitar").click(function(){
					
					var flag = true;//判断是否有空的值
					var dataParams = {};//将键值对放入
					
					var ff = $("#btnform")["0"];//获取form控件
					//循环form控件
					for (var i=0;i<ff.elements.length;i++)
					{
						var ee = ff.elements[i];
						if("INPUT" == ee.tagName || "SELECT" == ee.tagName){
							//处理代码
// 							console.log(ee.name);
// 							console.log(ee.value);
							//如果为空，则停止运行
							if( ee.value == "" ){
								$(ee).focus().css({
									border: "1px solid red",
									boxShadow: "0 0 2px red"
								});
								flag = false;
								break;
							}else{
								dataParams[ee.name] = ee.value;
							}
						}
					}
					//如果全部为空，则发送请求
					if( flag ){
						$.post('${pageContext.request.contextPath}/queryAction_addGuitar', dataParams, function(res)
	 					{
							//刷新表格
							var table = $('#example').DataTable();
	 						table.ajax.reload();
	 						//关闭弹窗
	 						$('#myModal').modal('hide');
	 				    	if( res.message == "success" ){
								swal("添加成功!", "该吉他已添加", "success");
	 				    	}else{
	 				    		swal("添加失败", "添加吉他失败，请刷新后重试", "error");
	 				    	}
	 					},"json");
					}
					
				});
				$("input[name='numStrings']").keyup(function(){       
			        var tmptxt = $(this).val();       
			        $(this).val( tmptxt.replace(/\D|^0/g,'') );       
			    }).bind("paste",function(){       
			        var tmptxt = $(this).val();       
			        $(this).val( tmptxt.replace(/\D|^0/g,'') );       
			    }).css("ime-mode", "disabled");
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
		        <button id="addbtn" type="button" class="btn btn-default" style="float:right;">添加</button>
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
		                <th>SerialNumber</th>
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
		                <th>SerialNumber</th>
		            </tr>
		        </tfoot>
		    </table>
		</div>
		
		
		
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
								aria-hidden="true">×
						</button>
						<h4 class="modal-title" id="myModalLabel">
							添加吉他
						</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="btnform">
							  <table class="table">
						    		<tr>
							    		<td>
							    			<label for="serialNumber">SerialNumber:</label>
							    		</td>
						    			<td>
									        <input type="text" name="serialNumber" class="form-control">
						    			</td>
						    		</tr>
						    		<tr>
						    			<td>
						    				  <label for="builder">Builder:</label>
						    			</td>
						    			<td>
									    	  <select name="builder" class="selectpicker">
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
						    		</tr>
						    		<tr>
						    			<td>
							                  <label for="type">Type:</label>
						    			</td>
						    			<td>
									    	  <select name="type" class="selectpicker" data-hide-disabled="true">
							                       <option value="ACOUSTIC">acoustic</option>
							                       <option value="ELECTRIC">electric</option>
							                  </select>
						    			</td>
						    		</tr>
						    		<tr>
						    			<td>
						    	  			<label for="backWood">BackWood:</label>
						    			</td>
						    			<td>
						    				<select name="backWood" class="selectpicker" data-hide-disabled="true">
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
						    				<label for="topWood">TopWood:</label>
						    			</td>
						    			<td>
						    				<select name="topWood" class="selectpicker" data-hide-disabled="true">
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
							    			<label for="model">Model:</label>
							    		</td>
						    			<td>
									        <input type="text" name="model" class="form-control">
						    			</td>
						    		</tr>
						    		<tr>
						    			<td>
						    				<label for="numStrings">NumStrings:</label>
							    		</td>
						    			<td>
									        <input type="text" name="numStrings" class="form-control" >
						    			</td>
						    		</tr>
						    		<tr>
						    			<td>
						    				<label for="price">Price:</label>
							    		</td>
						    			<td>
									        <input type="text" name="price" class="form-control" 
									        	onkeyup="value=value.replace(/\.\d{2,}$/,value.substr(value.indexOf('.'),3))">
						    			</td>
						    		</tr>
						    	</table>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" 
								data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary" id="addguitar">
							提交
						</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
		
</body>
</html>