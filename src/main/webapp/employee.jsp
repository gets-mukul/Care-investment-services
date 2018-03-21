<!DOCTYPE html>

<%@page import="authentication.AppProperties"%>
<html>
<%
	String id = request.getSession().getAttribute("id").toString();
	String backendUrl = AppProperties.getProperty("backend_url");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Dashboard</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">


<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation" ng-app="myApp">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg sidebar-content">
			<jsp:include page="header.jsp"></jsp:include>

			<div class=" wrapper-content">
				<div class="row">

					<div class="col-lg-7">
						<div class="tabs-container">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#tab-1">Trail</a></li>
								<li class=""><a data-toggle="tab" href="#tab-2">Contacts</a></li>
								<li class=""><a data-toggle="tab" href="#tab-4">Others</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab-1" class="tab-pane active">
									<div class="panel-body" ng-controller="trial_list">
										<div class="row">
											<div class="col-xs-8 ">
									<div class="form-group" id="data_5">
                                <label>Select Trial Between Dates</label>
                                <div class="input-daterange input-group" id="datepicker" data-date-format="yyyy-mm-dd">
                                    <input type="text" class="input-sm form-control" name="start"  ng-model="startDate" />
                                    <span class="input-group-addon">to</span>
                                    <input type="text" class="input-sm form-control" name="end"  ng-model="endDate"/>
                                </div>
                            </div>
</div>
										</div>
										<table class="table">
											<thead>
												<tr>
													<th>Start Date</th>
													<th>Start Time</th>
													<th>End Date</th>
													<th>Segment</th>
													<th>Start</th>
													<th>Edit</th>
													<th>Delete</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="x in trials | myfilter:startDate: endDate" class="{{ x.color }}">													
													<td><div class="data">{{ x.start_date | date:'dd-MMM-yyyy'}}</div>
													<input type="text" value="{{ x.start_date | date:'yyyy-MM-dd'}}"  class="row_start_date form-control row_input">												
													</td>
													<td><div class="data">{{ x.start_time }}</div>
													<input type="text" value="{{ x.start_time_in_format}}"  class="row_start_time form-control row_input" data-autoclose="true"></td>
													<td>
													<div class="data">{{ x.end_date | date:'dd-MMM-yyyy'}}</div>
													<input  type="text" value="{{ x.end_date | date:'yyyy-MM-dd'}}"  class="row_end_date form-control row_input">		</td>
													<td><div class="data">{{ x.segment }}</div>
													<select class="row_segment form-control row_input" ng-controller="segments_control">													
													<option value="{{y.id}}" ng-repeat="y in segments" ng-selected="{{x.segment_id == y.id}}">{{y.name}}</option>
													</select>
													</td>
													<td><button class="btn btn-primary btn-xs"
															type="button" ng-click="on_click_trial(x.id)">
															<i class="fa fa-phone"></i>&nbsp;Start
														</button></td>
														<td>
														<button class="btn btn-warning btn-xs edit_trial"
															type="button" ng-click="on_edit_trial(x.id,$event)">
															<i class="fa fa-edit"></i>&nbsp;Edit
														</button>
														<button class="btn btn-info btn-xs save_trial"
															type="button" ng-click="on_save_trial(x.id,$event)">
															<i class="fa fa-save"></i>&nbsp;Save
														</button></td>
														<td><button class="btn btn-danger btn-xs"
															type="button" ng-click="on_delete_trial(x.id)">
															<i class="fa fa-times"></i>&nbsp;Delete
														</button></td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>
								<div id="tab-2" class="tab-pane">
									<div class="panel-body" ng-controller="incomplete_list">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>

													<th>Call Contact</th>

												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="x in contacts"">
													<td>{{ x.task_id }}</td>

													<td><button class="btn btn-primary btn-xs"
															type="button"
															ng-click="on_click_call(x.contact_number,x.task_id)">
															<i class="fa fa-phone"></i>&nbsp;Call Contact
														</button></td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>
								<div id="tab-3" class="tab-pane">
									<div class="panel-body"></div>
								</div>
							</div>


						</div>
					</div>
					<div class="col-lg-5">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Up Coming Events</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-lg-12" ng-controller="up_coming_events">
										<table class="table table-hover margin bottom">
											<thead>
												<tr>
													<th style="width: 1%" >Event</th>
													<th >Start Date</th>
													<th >Time</th>
													<th >End Date</th>
													<th >Start</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="x in event" class="{{x.is_today}}">
													<td>{{x.status}}</td>
													<td>{{ x.start_date | date:'dd-MMM-yyyy'}}</td>
													<td>{{x.time}}</td>
													<td>{{x.end_date | date:'dd-MMM-yyyy'}}</td>
													<td><button class="btn btn-primary btn-xs"
															type="button">
															<i class="fa fa-phone"></i>&nbsp;Start
														</button></td>

												</tr>

											</tbody>
										</table>
									</div>





								</div>
							</div>
						</div>
					</div>
				</div>







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
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
 <script src="js/plugins/fullcalendar/moment.min.js"></script>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript" src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>

<script>
$('#data_5 .input-daterange').datepicker({
    keyboardNavigation: false,
    forceParse: false,
    autoclose: true,
});
$(".row_start_date").hide();
$(".row_end_date").hide();
$(".row_start_time").hide();
$(".row_segment").hide();
$('.save_trial').hide();




var id = <%=id%>;
var url ='<%=backendUrl%>'+ 'rest/employee/incomplete/'+id;			
var app = angular.module('myApp', []);

var segmentsUrl ='<%=backendUrl%>'+ 'rest/segment/parent/-1';
app.controller('segments_control', function($scope, $http) {
    $http.get(segmentsUrl)
    .then(function (response) {
   		 $scope.segments = response.data.records;
   	 });
    });

app.controller('incomplete_list', function($scope, $http) {
    $http.get(url)
    .then(function (response) {
   	 $scope.contacts = response.data.records;
   	 });
    
    $scope.on_click_call= function(mobile, task_id){
    	var form = $('<form action="caller.jsp" method="post">' +
    			  '<input type="text" name="mobile" value="' + mobile + '" />' +
    			  '<input type="text" name="task_id" value="' + task_id + '" />' +
    			  '</form>');
    			$('body').append(form);
    			form.submit();
    };	 
					});
var trialUrl ='<%=backendUrl%>'+ 'rest/trial/all/'+id;		
app.controller('trial_list', function($scope, $http) {
    $http.get(trialUrl)
    .then(function (response) {
   	 	$scope.trials = response.data.records;
   	   	 $scope.startDate=response.data.min_date;
        $scope.endDate=response.data.max_date;        
   	 });
    
    $scope.on_click_trial= function(trial_id){
    	var form = $('<form action="trial.jsp" method="post">' +
    			  '<input type="text" name="trial_id" value="' + trial_id + '" />' +
    			  '</form>');
    			$('body').append(form);
    			form.submit();
    };
    $scope.on_save_trial = function(trial_id,$event){
    	var saveButton = $($event.target);
    	var newStartDate =saveButton.parents('tr').children('td').find('.row_start_date').val();
    	var newStartTime =saveButton.parents('tr').children('td').find('.row_start_time').val();;
    	var newEndDate =saveButton.parents('tr').children('td').find('.row_end_date').val();;
    	var newSegmentId =saveButton.parents('tr').children('td').find('.row_segment').val();;
    	var urlAjax = '<%=backendUrl%>'+'rest/trial/update/'+trial_id;		
    	var trailDetailsJSON = {"start_date":newStartDate,"start_time":newStartTime,"end_date":newEndDate ,"segment_id":newSegmentId};
		$.ajax({
		    type: "POST",
		    url: urlAjax,
		    data: JSON.stringify(trailDetailsJSON),
		    contentType: 'application/json; charset=utf-8',
		    success: function(data) { 
		    	location.href= 'employee.jsp';
		    	
		    },
		    error: function(data) {alert("ajax error"); },
		    dataType: 'json'
		});
    	
    };
    $scope.on_edit_trial = function(trial_id,$event){
    	$('.save_trial').hide();
    	$('.edit_trial').show();
    	$('.data').show();
    	$('.row_input').hide();
    	var editButton = $($event.target);
    	editButton.hide();
    	editButton.siblings('.save_trial').show();    	
    	$(".row_start_date").datepicker({
    		todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            format:'yyyy-mm-dd'
    	});
    	$(".row_end_date").datepicker({
    		todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            format:'yyyy-mm-dd'
    	});
    	$(".row_start_time").clockpicker();
    	editButton.parents('tr').children('td').find('.row_input').show();
    	editButton.parents('tr').children('td').find('.data').hide();
    	
    };
    $scope.on_delete_trial= function(trial_id){
    	var urlAjax = '<%=backendUrl%>'+'rest/trial/delete/'+trial_id;			
		$.ajax({
		    type: "GET",
		    url: urlAjax,
		    contentType: 'application/json; charset=utf-8',
		    success: function(data) { 
		    	location.href= 'employee.jsp';
		    },
		    error: function(data) {alert("ajax error"); },
		    dataType: 'json'
		});
    };

					});
app.filter("myfilter", function($filter) {
    return function(items, from, to) {
          return $filter('filter')(items, "name", function(v){
        	  
            var date  = moment(v);
            return date >= moment(from) && date <= moment(to);
          });
    };
  });
					
var upComingUrl ='<%=backendUrl%>'+'rest/dashboard/employee/upcoming_events/'+id;
app.controller('up_coming_events', function($scope, $http) {
    $http.get(upComingUrl)
    .then(function (response) {
   	 	$scope.event = response.data.records;
   	 })
});

</script>
</html>