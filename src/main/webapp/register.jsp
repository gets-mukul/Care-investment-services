
<!DOCTYPE html>

<%@page import="authentication.AppProperties"%>
<html>

<head>
<%
String backendUrl = AppProperties.getProperty("backend_url");
%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Registration</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">


</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen   animated fadeInDown">
		<div>
			<div>

				<img alt="image" class="img-circle"
						src="img/cis_logo.jpg" />

			</div>
			<h3>Register to Care investment cervices</h3>
			<p>Create account to see it in action.</p>
			<form class="m-t" role="form" action="login.html"
				id="registrationForm">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Name"
						required="" id="name">
				</div>
				<div class="form-group">
					<input type="email" class="form-control" placeholder="Email"
						required="" id="email">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="Password"
						required="" id="password">
				</div>
				<div class="form-group">
					<input type="number" class="form-control" placeholder="Mobile"
						required="" id="mobile">
				</div>
				
				<button type="submit" class="btn btn-primary block full-width m-b">Register</button>

				<p class="text-muted text-center">
					<small>Already have an account?</small>
				</p>
				<a class="btn btn-sm btn-white btn-block" href="index.jsp">Login</a>
			</form>

		</div>
	</div>
</body>
	<!-- Mainly scripts -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script src="js/plugins/sweetalert/sweetalert.min.js"></script>
	<script>
    $(document).ready(function() {
    	$("#registrationForm").submit(function(e){
    		var name = $('#name').val();
    		var email = $('#email').val();
    		var password = $('#password').val();
    		var mobile = $('#mobile').val();
    		var url = '<%=backendUrl%>'+"rest/auth/registration/";
    		url = url+name+'/'+email+'/'+password+'/'+mobile;
    		console.log(name);
    		console.log(email);
    		console.log(password);
    		console.log(mobile);
    		e.preventDefault();
    		$.ajax({
    			type: "GET",
 	            url: url,
 	           success: function(data)
   	           {

	               var jsonData = $.parseJSON(data);
	               var status = jsonData.status;
	               var message = jsonData.message;
   	        	  
	               if(status == true)
	           		{
	            	   swal({
	                       title: "Registration done sucessfully",
	                       text: "Click ok to login",
	                       type: "warning",
	                       showCancelButton: false,
	                       confirmButtonColor: "#DD6B55",
	                       confirmButtonText: "OK",
	                       closeOnConfirm: false
	                   }, function () {
	                      
	                       window.location  = 'index.jsp';
	                   });
	           		}
	               else{
	            	   
	            	   swal({
	                       title: message,
	                       text: "Click ok to register again !",
	                       type: "warning",
	                       showCancelButton: false,
	                       confirmButtonColor: "#DD6B55",
	                       confirmButtonText: "OK",
	                       closeOnConfirm: false
	                   }, function () {
	                       window.location  = 'register.jsp';
	                   });
 	            } 
   	           }
    		});
    	});
    }); 	           
    	

    </script>


</html>
