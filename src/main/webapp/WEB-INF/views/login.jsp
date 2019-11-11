<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- SB ADMIN CSS -->
    <!-- Bootstrap core CSS-->
   <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/bootstrap.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/all.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/sb-admin.css">


    <style>
    .page-header {
        padding-bottom: 9px;
        margin: 40px 0 20px;
        border-bottom: 1px solid #eee;
    }
    .page-header {
        border-color: #aaa;
    }
    </style>
  </head>

  <body class="bg-dark" style="background-image: url('https://images.unsplash.com/photo-1462206092226-f46025ffe607?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80');
      background-repeat: no-repeat; background-size: cover;">

 
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header text-center"><a class="navbar-brand mr-1"> <img src="${pageContext.request.contextPath }/resources/dist/img/logox2.png" class="user-image" alt="User Image"></a></div>
        <div class="card-body">
          <form class="form-horizontal" method="post" action="">
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                <label for="username">Username</label>
              </div>
              <span class="text-danger"><?php echo form_error('username'); ?></span>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                <label for="password">Password</label>
              </div>
              
            </div>
            <div class="form-group">
            
            </div>
            <div class="form-group">
                <div class="col-md-12 text-center">
                   
                
                    <a href="${pageContext.request.contextPath }/dashboard" class="btn btn-primary btn-lg">Login</a>
                    
                </div>
            </div>
          </form>
          <div class="text-center">


            
          </div>
        </div>
      </div>
    </div>

 	
  </body>

</html>