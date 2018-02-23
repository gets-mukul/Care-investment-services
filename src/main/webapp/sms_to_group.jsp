<!DOCTYPE html>
<%@page import="authentication.AppProperties"%>
<html>
<%
	String authApi = AppProperties.getProperty("auth_api");
	String backendUrl = AppProperties.getProperty("backend_url");
	%>
<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Messanger</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/plugins/summernote/summernote.css" rel="stylesheet">
<link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
<link href="css/plugins/select2/select2.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="wrapper wrapper-content ">

				<div class="row">
					<jsp:include page="sms_template.jsp"></jsp:include>
					
					<div class="col-lg-9 animated fadeInRight">
						<div class="mail-box-header">
							<h2>Group SMS</h2>
						</div>
						<div class="mail-box">
							<div class="mail-body">

								<form class="form-horizontal" method="get">
								
									<div class="form-group" style="padding-bottom: 8px;">
										<label class="col-sm-2 control-label">Group Id:</label>
										<div class="col-sm-10">
											<select id="groupId"></select>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label">Message:</label>

										<div class="col-sm-10">
											<input type="text"
												class="form-control" value="" style="height: 159px;">
										</div>
									</div>
								</form>

							</div>
							<div class="mail-body text-right tooltip-demo">
								<a href="mailbox.html" class="btn btn-sm btn-primary"
									data-toggle="tooltip" data-placement="top"><i
									class="fa fa-reply"></i> Send</a>


							</div>

							<div class="clearfix"></div>



						</div>
					</div>
				</div>
			</div>
			<div class="footer">

				<div>
					<strong>Copyright</strong> Care investment services&copy; 2017-2018
				</div>
			</div>

		</div>

	</div>
</body>

<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>

<!-- SUMMERNOTE -->
<script src="js/plugins/summernote/summernote.min.js"></script>

<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>
<script>
	$(document).ready(function() {
		
		$.ajax({
		    url:'<%=backendUrl%>'+'rest/sms/List_group/'+'<%=authApi%>',
		    type:'GET',
		    data: data,
		    success: function( data ) {
		        $.each(json, function(i, value) {
		            $('#groupId').append($('<option>').text(value).attr('value', value));
		        });
		    }
		});

	});
</script>



</html>
