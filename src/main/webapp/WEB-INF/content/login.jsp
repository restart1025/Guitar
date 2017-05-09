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
		<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
		
		<script type="text/javascript">
			
	    </script>
</head>
<body>
		<div style="padding: 100px 100px 10px;">
		    <form class="bs-example bs-example-form" role="form">
		    	<div class="form-group">
		    	  <label for="builder">Builder:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
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
                  <label for="type">&emsp;Type:&emsp;</label>
		    	  <select id="type" name="type" class="selectpicker" data-hide-disabled="true">
                       <option value="ACOUSTIC">acoustic</option>
                       <option value="ELECTRIC">electric</option>
                  </select>
		        </div>
		        <br>
		        <div class="form-group">
		    	  <label for="backWood">BackWood:&emsp;</label>
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
                  <label for="topWood">&emsp;TopWood:&emsp;</label>
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
		        </div>
		        <br>
		        <div class="input-group">
		            <span class="input-group-addon">Model:</span>
		            <input type="text" name="model" class="form-control">
		        </div>
		        <br>
		        <button type="submit" class="btn btn-default">提交</button>
		    </form>
		</div>
		
		<table id="example" class="display" cellspacing="0" width="100%">
	        <thead>
	            <tr>
	                <th>Name</th>
	                <th>Position</th>
	                <th>Office</th>
	                <th>Extn.</th>
	                <th>Start date</th>
	                <th>Salary</th>
	            </tr>
	        </thead>
	        <tfoot>
	            <tr>
	                <th>Name</th>
	                <th>Position</th>
	                <th>Office</th>
	                <th>Extn.</th>
	                <th>Start date</th>
	                <th>Salary</th>
	            </tr>
	        </tfoot>
	    </table>
		
</body>
</html>