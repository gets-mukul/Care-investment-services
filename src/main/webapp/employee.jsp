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
									
										<table class="table">
											<thead>
												<tr>
													<th>Start Date </th>
													<th>Start Time </th>													
													<th>End Date </th>
													<th>Segment </th>
													<th>Start Trial</th>
													<th>Edit</th>
													<th>Delete</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="x in trials | myfilter:startDate: endDate" class="alert alert-{{ x.color }}">													
													<td>{{ x.start_date | date:'dd-MMM-yyyy'}}</td>
													<td>{{ x.start_time }}</td>
													<td>{{ x.end_date | date:'dd-MMM-yyyy'}}</td>
													<td>{{ x.segment }}</td>
													<td><button class="btn btn-primary btn-xs"
															type="button" ng-click="on_click_trial(x.id)">
															<i class="fa fa-phone"></i>&nbsp;Start Trial
														</button></td>
														<td><button class="btn btn-warning btn-xs"
															type="button" ng-click="on_edit_trial(x.id)">
															<i class="fa fa-edit"></i>&nbsp;Edit
														</button></td>
														<td><button class="btn btn-warning btn-xs"
															type="button" ng-click="on_delete_trial(x.id)">
															<i class="fa fa-times"></i>&nbsp;Delete
														</button></td>
												</tr>
											</tbody>
										</table>

									</div>
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
												<tr ng-repeat="x in contacts">
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
	<div class="col-lg-12">
                                                <table class="table table-hover margin bottom">
                                                    <thead>
                                                    <tr>
                                                        <th style="width: 1%" class="text-center">No.</th>
                                                        <th>Event</th>
                                                        <th class="text-center">Day</th>
                                                         <th class="text-center">Time</th>
                                                        <th class="text-center">Start</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="text-center">1</td>
                                                        <td> Security doors
                                                            </td>
                                                        <td class="text-center small">16 Jun 2014</td>
                                                        <td class="text-center"><span class="label label-primary">$483.00</span></td>

                                                    </tr>
                                                    <tr>
                                                        <td class="text-center">2</td>
                                                        <td> Wardrobes
                                                        </td>
                                                        <td class="text-center small">10 Jun 2014</td>
                                                        <td class="text-center"><span class="label label-primary">$327.00</span></td>

                                                    </tr>
                                                    <tr>
                                                        <td class="text-center">3</td>
                                                        <td> Set of tools
                                                        </td>
                                                        <td class="text-center small">12 Jun 2014</td>
                                                        <td class="text-center"><span class="label label-warning">$125.00</span></td>

                                                    </tr>
                                                    <tr>
                                                        <td class="text-center">4</td>
                                                        <td> Panoramic pictures</td>
                                                        <td class="text-center small">22 Jun 2013</td>
                                                        <td class="text-center"><span class="label label-primary">$344.00</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center">5</td>
                                                        <td>Phones</td>
                                                        <td class="text-center small">24 Jun 2013</td>
                                                        <td class="text-center"><span class="label label-primary">$235.00</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center">6</td>
                                                        <td>Monitors</td>
                                                        <td class="text-center small">26 Jun 2013</td>
                                                        <td class="text-center"><span class="label label-primary">$100.00</span></td>
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
<script src="js/plugins/fullcalendar/moment.min.js"></script>

<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
 <script src="js/plugins/fullcalendar/moment.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript" src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>



<script>
$('#data_5 .input-daterange').datepicker({
    keyboardNavigation: false,
    forceParse: false,
    autoclose: true,
});



var id = <%=id%>;
var url ='<%=backendUrl%>'+ 'rest/employee/incomplete/'+id;			
var app = angular.module('myApp', []);
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

					});
app.filter("myfilter", function($filter) {
    return function(items, from, to) {
          return $filter('filter')(items, "name", function(v){
        	  console.log('v >>'+v);
            var date  = moment(v);
            return date >= moment(from) && date <= moment(to);
          });
    };
  });
</script>


</html>