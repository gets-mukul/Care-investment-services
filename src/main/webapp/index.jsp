<!DOCTYPE html>
<html>
<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/login_two_columns.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:29:33 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Login 2</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

</head>

<body class="gray-bg">

	<div class="loginColumns animated fadeInDown">
		<div class="row">

			<div class="col-md-6">
				<h2 class="font-bold">Care Investment Services</h2>
				<h3>Our Mission</h3>
				<p>To provide an information resource to the business community
					across the globe & Successful implementation of our strategy to
					gain high returns with less risk consistently.</p>

				<p>The betterment of our clients is the first and foremost goal
					of Smart Investment Services.</p>

				<p>We want to help our clients to get higher returns out of
					their investments.</p>

				<p>We want to get established as a reliable and one stop source
					for the client's Investment Needs.</p>

			</div>
			<div class="col-md-6">
				<div class="ibox-content">
					<form class="m-t" role="form" id="idForm">
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email"
								required="" id="email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control"
								placeholder="Password" required="" id="password">
						</div>
						<button type="submit" class="btn btn-primary block full-width m-b" id="login">Login</button>

						<a href="forgot_password"> <small>Forgot password?</small>
						</a>

						<p class="text-muted text-center">
							<small>Do not have an account?</small>
						</p>
						<a class="btn btn-sm btn-white btn-block" href="register.jsp">Create
							an account</a>
					</form>
					<p class="m-t"></p>
				</div>
			</div>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-6">Copyright care investment services</div>
			<div class="col-md-6 text-right">
				<small>© 2017-2018</small>
			</div>
		</div>
	</div>

</body>
<script src="js/jquery-2.1.1.js"></script>
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#idForm").submit(function(e) {
	
	    var url = "http://localhost:8081/careservices/rest/auth/login/"; // the script where you handle the form input.
		var email = $('#email').val();
	    var password = $('#password').val();
	    url = url+email+'/'+password;
	    e.preventDefault();
	    $.ajax({
	           type: "GET",
	           url: url,
	           success: function(data)
	           { 
	               var jsonData = $.parseJSON(data);
	               var status = jsonData.status;
	               var message = jsonData.message;
	              
	               if(status!=true)
	           		{
	            	   swal({
		                   title: "Unsuccessful Login",
		                   text: message
		               });
	           		}
	               else
	            	{
	            	  var userProfile = jsonData.user_profile;
	            	  var name = userProfile.name;
	            	  var id = userProfile.id;
	            	  var image_url	= userProfile.image_url;
	            	  var dashboardUrl = 'create_session?id='+id+'&name='+name+'&image_url='+image_url;
		            	  $.ajax({
		       	           type: "POST",
		       	           url: dashboardUrl,
		       	           success: function(data)
		       	           {
		       	        	   window.location  = 'admin.jsp';
		       	           }
		            	  });
	            	}	               
	           }
	         });
	});
	
	
});


</script>

	
</html>
