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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript" src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="css/plugins/fullcalendar/fullcalendar.print.css"
	rel='stylesheet' media='print'>

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
								<li class="active"><a data-toggle="tab" href="#tab-2">Trail</a></li>
								<li class=""><a data-toggle="tab" href="#tab-1">Incomplete</a></li>									
								<li class=""><a data-toggle="tab" href="#tab-4">Others</a></li>
								</ul>
								<div class="tab-content">
									<div id="tab-1" class="tab-pane">
										<div class="panel-body" ng-controller="incomplete_list">
											<table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Contact No.</th>
                                <th>Call</th>
                                
                            </tr>
                            </thead>
                            <tbody >
                            <tr ng-repeat="x in contacts">
                                <td>{{ x.count }}</td>
                                <td>{{ x.contact_number }}</td>
                                <td><a class="btn btn-primary btn-xs" type="button" href="caller.jsp?mobile={{ x.contact_number }}"><i class="fa fa-phone"></i>&nbsp;Call</a></td>                                
                            </tr>
                            </tbody>
                        </table>

										</div>
									</div>
									<div id="tab-2" class="tab-pane active">
										<div class="panel-body"></div>
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
                                        <h5>Tasks for Today and Tomorrow</h5>
                                       
                                    </div>
                                    <div class="ibox-content">
                                    <div class="row">
					


						
						
<div class="col-lg-12">
                                                <table class="table table-hover margin bottom">
                                                    <thead>
                                                    <tr>
                                                        <th style="width: 1%" class="text-center">No.</th>
                                                        <th>Event</th>
                                                        <th class="text-center">Time & Day</th>
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

<script src="js/plugins/dataTables/datatables.min.js"></script>
<!-- Full Calendar -->

<script>
var id = <%=id%>;
var url ='<%=backendUrl%>'+ 'rest/employee/incomplete/'+id;			
var app = angular.module('myApp', []);
app.controller('incomplete_list', function($scope, $http) {
    $http.get(url)
    .then(function (response) {
   	 $scope.contacts = response.data.records;
   	 });
    
    
$(document).ready(function(){
			
	 });
	 
	 
					});
</script>


</html>