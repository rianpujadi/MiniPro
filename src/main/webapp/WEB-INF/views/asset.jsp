<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header apaaja">
      <h1>
        Display All Asset Data In Table

      </h1>
<!--       <ol class="breadcrumb"> -->
<!--         <li><a href="#"><i class="fa fa-book"></i> Home</a></li> -->
<!--         <li class="active">User</li> -->
<!--       </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
    
    <div class="box">
<!--             <div class="box-header"> -->
<!--               <h3 class="box-title">Display All Asset Data In Table</h3> -->
<!--             </div> -->
            <!-- /.box-header -->
            <div class="box-body">
            <div class="form-group">
            	<button type="submit" class="btn btn-success" onclick=" add()">Add Data Asset</button>
            	</div>
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                <tr role="row">
                	<th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">ID Asset</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Number</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Name</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Category</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">Actions</th>
                </tr>
                </thead>
                <tbody>
				<!-- loop over and print our customers -->
      			<c:forEach var="tempAsset" items="${listAssets}">

       			<!-- construct an "update" link with customer id -->
       			<c:url var="updateLink" value="/asset/update/${tempAsset.assetid}">
       			</c:url>

       			<!-- construct an "delete" link with customer id -->
       			<c:url var="deleteLink" value="/asset/delete/${tempAsset.assetid}">
       			</c:url>

       			<tr>
        		<td>${tempAsset.assetid}</td>
        		<td>${tempAsset.assetnumber}</td>
        		<td>${tempAsset.assetname}</td>
        		<td>${tempAsset.category}</td>

        		<!-- display the update link --> 
         		<td>
         			<a class="btn btn-primary" href="${updateLink}"> <i class="fa fa-pencil-square-o"></i></a>
         			<a class="btn btn-danger" href="${deleteLink}"
         			onclick="if (!(confirm('Are you sure you want to delete this asset?'))) return false"> <i class="fa fa-trash"></i></a>
        		</td>

       			</tr>

      			</c:forEach>
               </tbody>
              
              </table>
              </div>
              </div>
              
               </div>
            </div>
            <!-- /.box-body -->
          </div>
      
    </section>
    <!-- /.content --> 

<script>
function add()
{
     location.href = "/asset/add";
} 
</script>
