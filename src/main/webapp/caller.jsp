<!DOCTYPE html>

<%@page import="authentication.AppProperties"%>
<html>
<%
	String id = request.getSession().getAttribute("id").toString();
	String mob = request.getParameter("mobile");
	String taskId = request.getParameter("task_id");
	String backendUrl = AppProperties.getProperty("backend_url");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Customer Details</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/colorpicker/bootstrap-colorpicker.min.css"
	rel="stylesheet">
<link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
<link href="css/plugins/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet">
<link href="css/plugins/select2/select2.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body class="fixed-navigation" ng-app="myApp">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>

			<div class="wrapper wrapper-content">

				<!-- --------------------------------------------------------------------------------------->
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Call Details</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-6 b-r">
										<form role="form" id="submit_task">
											<input type="hidden" name="mobile" value="<%=mob%>">
											<input type="hidden" name="task_id" value="<%=taskId%>"
												id="task_id">
											<div class="form-group">
												<label>Contact No.</label> <input type="text" disabled=""
													value="<%=mob%>" class="form-control">
											</div>
											<div class="form-group">
												<label>Status</label> <select class="form-control"
													id="status" required>
													<option value="NOT_TRADE">NOT_TRADE</option>
													<option value="TRIAL">TRIAL</option>
													<option value="BUSY">BUSY</option>
													<option value="NOT_PICKED">NOT_PICKED</option>
													<option value="NO_NETWORK">NO_NETWORK</option>
													<option value="MOBILE_DOESNOT_EXIST">MOBILE_DOESNOT_EXIST</option>
													<option value="CALL_LATER">CALL_LATER</option>
													<option value="SWITCH_OFF">SWITCH_OFF</option>
													<option value="NOT_REACHABLE">NOT_REACHABLE</option>
													<option value="AFTER_SOME_TIME">AFTER_SOME_TIME</option>
												</select>
											</div>
											<div class="row">
												<div class="form-group col-sm-4" id="start_date">
													<label class="font-normal">Start Date</label>
													<div class="input-group date">
														<span class="input-group-addon"><i
															class="fa fa-calendar"></i></span><input type="text"
															class="form-control">
													</div>
												</div>
												<div class="form-group clockpicker col-sm-4" id="start_time"
													data-autoclose="true">
													<label class="font-normal">Start Time</label> <input
														type="text" class="form-control">

												</div>

												<div class="form-group col-sm-4" id="end_date">
													<label class="font-normal">End Date</label>
													<div class="input-group date">
														<span class="input-group-addon"><i
															class="fa fa-calendar"></i></span><input type="text"
															class="form-control">
													</div>
												</div>
											</div>

											<div class="form-group" id="segment"
												ng-controller="segments_control">
												<label>Segment</label> <select class="form-control" multiple>
													<option value="{{y.id}}" ng-repeat="y in segments">{{y.name}}</option>
												</select>
											</div>



											<div>
												<button class="btn btn-sm btn-primary pull-right m-t-n-xs"
													type="submit">
													<strong>Submit</strong>
												</button>

											</div>
										</form>
									</div>

								</div>
							</div>
						</div>
					</div>


				</div>

				<!-- --------------------------------------------------------------------------------------->

				<div class="footer">

					<div>
						<strong>Copyright</strong> Care investment services&copy;
						2017-2018
					</div>
				</div>



			</div>
		</div>
	</div>
</body>
<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript"
	src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>


<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Clock picker -->
<script src="js/plugins/clockpicker/clockpicker.js"></script>

<!-- Image cropper -->
<script src="js/plugins/cropper/cropper.min.js"></script>

<!-- Date range picker -->
<script src="js/plugins/daterangepicker/daterangepicker.js"></script>

<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>


<script>

var url ='<%=backendUrl%>'+ 'rest/segment/parent/-1';			
var app = angular.module('myApp', []);
app.controller('segments_control', function($scope, $http) {
    $http.get(url)
    .then(function (response) {
   		 $scope.segments = response.data.records;
   	 });
    });  
$('#submit_task').unbind().on('submit',function(e){
	e.preventDefault();
	var taskId = $('#task_id').val();
	var status = $('#status').val();
	var startDate = $('#start_date input').val();
	var endDate = $('#end_date input').val();
	var startTime = $('#start_time input').val();
	var segmentValue = $('#segment select').val();
	var isValid=false;
	if(status==='TRIAL')
	{		 
		if(startDate == null || startDate=='')
		{
			isValid=false;
			 swal({
	                title: "Cannot Submit Details",
	                text: "Start Date cannot be left blank in case of TRIAL."
	            });
		} 
		else if(endDate == null || endDate=='')
		{
			isValid=false;
			 swal({
	                title: "Cannot Submit Details",
	                text: "End Date cannot be left blank in case of TRIAL."
	            });
		}
		else if(startTime == null || startTime=='')
		{
			isValid=false;
			 swal({
	                title: "Cannot Submit Details",
	                text: "Start time cannot be left blank in case of TRIAL."
	            });
		}
		else if(segmentValue.length==0)
		{
			isValid=false;
			 swal({
	                title: "Cannot Submit Details",
	                text: "Segments cannot be left blank in case of TRIAL."
	            });
		}
		else
		{
			isValid=true;
		}	
		
	}
	else
	{
		isValid=true;
	}	
	if(isValid)
	{
		var urlAjax = '<%=backendUrl%>'+'rest/employee/submit_employee_task'
		var taskDetailsJSON = {"status":status, "task_id":taskId,"start_date":startDate, "end_date":endDate, "start_time":startTime,"segment_ids":segmentValue};			
		$.ajax({
		    type: "POST",
		    url: urlAjax,
		    contentType: 'application/json; charset=utf-8',
		    data: JSON.stringify(taskDetailsJSON),
		   
		    success: function(data) { 
		    	location.href= 'employee.jsp';
		    },
		    error: function(data) {alert("ajax error"); },
		    dataType: 'json'
		});
	}	
	
});

	$(document).ready(function() {
		$('#start_date .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
		$('#end_date .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
		$('.clockpicker').clockpicker();
		$('#segment select').select2();
		
		$('#segment').hide();
		$('#start_date').hide();	
		$('#start_time').hide();	
		$('#end_date').hide();	
		$('#status').unbind().on('change', function(){
			if($(this).val()=='TRIAL')
			{				
				$('#segment').show();
				$('#start_date').show();	
				$('#start_time').show();	
				$('#end_date').show();	
			}
			else
			{
				$('#segment').hide();	
				$('#start_date').hide();	
				$('#start_time').hide();	
				$('#end_date').hide();	
			}	
		});
		
	});
</script>



</html>
