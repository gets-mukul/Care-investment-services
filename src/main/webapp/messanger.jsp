<!DOCTYPE html>
<%@page import="authentication.AppProperties"%>
<html>
<%
	String authApi = AppProperties.getProperty("auth_api");
	String backendUrl = AppProperties.getProperty("backend_url");
	String route = AppProperties.getProperty("route");
	String senderId = AppProperties.getProperty("sender_id");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Messanger</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="css/plugins/select2/select2.min.css" rel="stylesheet">
<link href="css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"
	rel="stylesheet">

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
							<h2>Send SMS</h2>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal" id="my-form">
								<div class="col-sm-6 b-r">

									<div class="form-group">
										<h4>Mobile:</h4>

										<input class="tagsinput form-control" type="text" id="mobile"
											style="min-width: 94%;" />
									</div>
									
									<div class="form-group ">
										<label class="checkbox-inline"><input type="checkbox" name="custome_group" value="INCOMPLETE" class="status-group"> Incomplete</label>
										<label class="checkbox-inline"><input type="checkbox" name="custome_group" value="TRIAL" class="status-group"> Trial </label>
										<label class="checkbox-inline"><input type="checkbox" name="custome_group" value="NOT_TRADE" class="status-group"> Not Trade</label>
										<label class="checkbox-inline"><input type="checkbox" name="custome_group" value="Others" class="status-group"> Others</label>
									</div>

									<div class="form-group">
										<label>Message:</label>
										<textarea class="form-control"
											style="height: 200px; width: 360px;" id="message"></textarea>

									</div>
								</div>

								<div class="col-sm-4">
									<h3>Groups</h3>

									<div id="group_list"></div>


								</div>


								<div class="form-group"></div>
								<div class="mail-body text-right tooltip-demo">
									<button type="submit" style="float: right"
										class="btn btn-w-m btn-primary" id="submit">Submit</button>


								</div>
							</form>
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


<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>

<!-- Tags Input -->
<script src="js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

<script>
	$(document).ready(function() {
		
		$.ajax({
			url : '<%=backendUrl%>'+'rest/sms/list_group/'+'<%=authApi%>',
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
							
							html +='<label class="checkbox-inline"><input type="checkbox" class="group-checkbox-list" name="'+name+'" value="'+id+'" id="group[]"> '+name+' </label><br>'
									
						});
						
						$('#group_list').html(html);
	}
				 
			
		});
		
		
			
		$('#my-form').submit(function(e){
			
			e.preventDefault();
			
			var mobile = $('#mobile').val();
			var message = $('#message').val();
			var groupArray = new Array();
			var statusArray = new Array();
			
			$('.group-checkbox-list').filter(':checked').each(function( index ) {
				  
				groupArray.push($( this ).val());
				
				});	

			
			$('.status-group').filter(':checked').each(function( index ) {
				  
				statusArray.push($( this ).val());
				});
			console.log(statusArray);
			

			
			var jsonObj = {
					"mobile_list" : mobile,
					"message" : message,
					"group_ids" : groupArray,
					"custome_group" : statusArray
			}
			var messageDetails = JSON.stringify(jsonObj);
			var formData = new FormData();
			formData.append('data', messageDetails);
			
				$.ajax({
								url : '<%=backendUrl%>'
												+ 'rest/sms/send_sms',
										type : "POST",
										data : messageDetails,
									});
								});

						$('.tagsinput').tagsinput({
							tagClass : 'label label-primary'
						});

					});
</script>
</html>
