<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- 	<title>FORM ASSET</title> -->
</head>

<body>
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        EDIT DATA ASSET
      </h1>
<!--       <ol class="breadcrumb"> -->
<!--         <li><a href="#"><i class="fa fa-book"></i> Home</a></li> -->
<!--         <li class="active">Master</li> -->
<!--       </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
 <div class="box">

 	<div class="form-container">
 	
 	
 	
	<form:form method="POST" modelAttribute="asset" class="form-horizontal" action="/asset/update">
		<div class="box-body">
		
				<div class="form-group">
				<label class="col-md-3" for="assetid">ID Asset</label>
				<div class="col-md-7">
					<form:input type="text" path="assetid" id="assetnumber" class="form-control input-sm" readonly="readonly"/>
					<div class="has-error">
						<form:errors path="assetid" class="help-inline"/>
					</div>
				</div>
				</div>
	
				<div class="form-group">
				<label class="col-md-3" for="assetnumber">Number</label>
				<div class="col-md-7">
					<form:input type="text" path="assetnumber" id="assetnumber" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="assetnumber" class="help-inline"/>
					</div>
				</div>
			</div>
		
			<div class="form-group">
				<label class="col-md-3" for="assetname">Name</label>
				<div class="col-md-7">
					<form:input type="text" path="assetname" id="assetname" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="assetname" class="help-inline"/>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3">Category:</label>
				<div class="col-md-7">
				<select class="form-control" name="category" id="category" th:field="*{category}">
				<option value="pilih">List Category</option>
				<option value="Asset Tetap">Asset Tetap</option>
				<option value="Asset Bergerak">Asset Bergerak</option>
				</select>
				</div>
			</div>
		
		</div>

		<div class="box-footer">
				<input type="submit" value="Submit" class="btn btn-primary btn-sm">
		</div>
		
		
	</form:form>
	</div>
 </div>
 </section>
</body>
</html>