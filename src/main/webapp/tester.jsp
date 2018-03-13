
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

<title>CIS | Tester</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/plugins/summernote/summernote.css" rel="stylesheet">
<link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
<link href="css/plugins/select2/select2.min.css" rel="stylesheet">
<link href="css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"
	rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

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

					<div class="ibox-content">
						<div id="group_list"></div>
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
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>

<!-- SUMMERNOTE -->
<script src="js/plugins/summernote/summernote.min.js"></script>

<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>

<!-- Tags Input -->
<script src="js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

<script>

$(document).ready(function() {
	
	
	
	$.ajax({
		url : '<%=backendUrl%>'+'rest/segment/list',				
		success : function(data,textStatus,jqXHR){
			var obj = data;
			var html = "";
			$
			.each(
					obj,
					function(
							key,
							value) {
						var name = value.name;
						var id = value.id;
						
						html +='<p><span class="label label-primary group-name" id="'+id+'">'+name+'</span></p>'
								
					});
					
					$('#group_list').html(html);
		}
	});
});
	</script>



</html>
