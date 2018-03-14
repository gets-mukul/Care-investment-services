<!DOCTYPE html>

<%@page import="authentication.AppProperties"%>
<html>
<%
	String userId = request.getSession().getAttribute("id").toString();
	String backendUrl = AppProperties.getProperty("backend_url");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Contacts</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

<link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation" ng-app="myApp">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg sidebar-content">
			<jsp:include page="header.jsp"></jsp:include>
			<input type="hidden" value="<%=userId%>" name="user_id" id="user_id">
			<div class="wrapper wrapper-content animated fadeIn"
				style="padding-right: 0px !important;">

				<div class="row" style="margin-bottom: -35px;">
					<div class="col-lg-5" style="padding-left: 5px;">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Upload Contact Numbers</h5>
							</div>
							<div class="ibox-content">

								<form>
									<div class="col-sm-6">
										<input type="file" name="fileupload" id="fileupload">
									</div>
									<div class="col-sm-6" style="padding-bottom: 11px;">
										<button class="btn btn-success " type="submit"
											style="width: 100px; height: 31px;" id="submit">
											<i class="fa fa-upload"></i>&nbsp;&nbsp;<span class="bold">Upload</span>
										</button>
									</div>
								</form>
								<a href="contact.xlsx" class="btn btn-primary btn-xs"
									style="margin-left: 16px;">Download</a> sample excel sheet of
								contact numbers

							</div>
						</div>
					</div>

					<div class="col-lg-2">
						<div class="widget style1 navy-bg">
							<div class="row">
								<div class="col-xs-2"></div>
								<div class="col-xs-2 text-right">
									<span> Total </span>
									<h2 class="font-bold" id="total">1800</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="widget style1 lazur-bg">
							<div class="row">
								<div class="col-xs-2"></div>
								<div class="col-xs-2 text-right">
									<span> Assigned </span>
									<h2 class="font-bold" id="assigned">260</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="widget style1 yellow-bg">
							<div class="row">
								<div class="col-xs-2"></div>
								<div class="col-xs-2 text-right">
									<span> Unassigned </span>
									<h2 class="font-bold" id="unassigned">12</h2>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>Assign Contacts</h5>

						</div>
						<div class="ibox-content">
							<div class="table-responsive" ng-controller="employee_details">
								<table class="table table-striped">
									<thead>
										<tr>

											<th>Name</th>
											<th>Assigned</th>
											<th>Completed</th>
											<th>Assign More</th>
										</tr>

									</thead>
									<tbody>
										<tr ng-repeat="x in details">
											<td>{{ x.name }}</td>
											<td>{{ x.total_task }}</td>
											<td>{{ x.complete_task }}</td>
											<td><input type="number" style="width: 70px;" name="noOfContacts" id="noOfContacts">
												<button type="submit" class="btn btn-primary btn-xs" ng-click="on_click_some_thing(x.id)"
													style="margin-left: 26px;">Assign</button></td>
										</tr>
									</tbody>

									<tfoot>
										<tr>

											<th>Name</th>
											<th>Assigned</th>
											<th>Completed</th>
											<th>Assign More</th>
										</tr>
									</tfoot>
								</table>
							</div>

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

<!-- Flot -->
<script src="js/plugins/flot/jquery.flot.js"></script>
<script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="js/plugins/flot/jquery.flot.spline.js"></script>
<script src="js/plugins/flot/jquery.flot.resize.js"></script>
<script src="js/plugins/flot/jquery.flot.pie.js"></script>
<script src="js/plugins/flot/jquery.flot.symbol.js"></script>
<script src="js/plugins/flot/curvedLines.js"></script>

<!-- Peity -->
<script src="js/plugins/peity/jquery.peity.min.js"></script>
<script src="js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- Jvectormap -->
<script src="js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

<!-- Sparkline -->
<script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- Jasny -->
<script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>

<!-- Sparkline demo data  -->
<script src="js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="js/plugins/chartJs/Chart.min.js"></script>
<script src="js/plugins/dataTables/datatables.min.js"></script>
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript"
	src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>

<script>

			
			var url ='<%=backendUrl%>'+'rest/employee/task_status';			
			var app = angular.module('myApp', []);
			app.controller('employee_details', function($scope, $http) {
			    $http.get(url)
			    .then(function (response) {
			   	 $scope.details = response.data.records;
			   	 });
			    
			    $scope.on_click_some_thing = function(id){
			    	
			    		var number = $('#noOfContacts').val();
						alert(number);
			    };
			    
			    $(document)
			    .ready(
			    		function() {
			    			
			    			
			    			
			    			var dashboardUrl = '<%=backendUrl%>'+'rest/employee/contact_cards';
			    			 $.ajax({
			    		        type: "GET",
			    		        url: dashboardUrl,
			    		        success: function(data)
			    		        {
			    		     		var assigned= 0;
			    		     		var unassigned =0;
			    		     		var total =0;
			    		     		
			    		     		assigned = data.total_assigned_contact;
			    		     		unassigned =data.total_uassigned_contacts;
			    		     		total =data.total_contacts;
			    		     		
			    		     		$('#assigned').text(assigned);
			    		     		$('#unassigned').text(unassigned);
			    		     		$('#total').text(total);
			    		     		
			    		        }
			    			  });
			    			
			    			$('#submit').click(function(e) {		
			    				
			    				var fileInput = document.getElementById('fileUpload');
			    				var clicked = e.target;
			    				var file = clicked.files[0];
			    				var formData = new FormData();
			    				formData.append('file', file);
			    				$.ajax({
			    					url : '<%=backendUrl%>'+'rest/excel/upload/'+'<%=userId%>',
			    					type : 'POST',
			    					data : formData,
			    					success : function(
			    							r) {
			    						if (r.success) {
			    						}
			    					},
			    					cache : false,
			    					contentType : false,
			    					processData : false
			    					
			    				});
			    				location.reload();
			    			});
			    			
									});
			    		});
</script>

</html>