<!DOCTYPE html>
<html>
<%
String id = request.getSession().getAttribute("id").toString();
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Employee Dashboard</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg sidebar-content">
			<jsp:include page="header.jsp"></jsp:include>

			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Contacts Available</h5>
								
							</div>
							<div class="ibox-content">

								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example"
										id="employee_table">
										<thead>
											<tr>
												<th>Contacts</th>
												<th>Status</th>
												<th>Name</th>
												<th>Location</th>
												
												
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>Contacts</th>
												<th>Status</th>
												<th>Name</th>
												<th>Location</th>
												

												
											</tr>
										</tfoot>
									</table>
								</div>

							</div>
							<div id="modal-form" class="modal fade" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-body">
													<div class="row">
														<div class="col-lg-12">
															<div class="ibox float-e-margins">
																<div class="ibox-title">
																	<h5>Assign Contacts</h5>

																</div>
																 <div class="ibox-content">
																	<table class="table table-bordered"
																		id="personDataTable">
																		<thead>
																			<tr>
																				<th>Select</th>
																				<th>Name</th>
																				<th>Task Pending</th>
																				<th>Total Task</th>
																			</tr>
																		</thead>

																		<tbody id="table_body">
																		</tbody>
																	</table>
																	<button type="button" style="float: right"
																		class="btn btn-w-m btn-primary" id="modal-button">Select</button>
																</div> 
															</div>
														</div>
													</div>
												</div>
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

<!-- Sparkline demo data  -->
<script src="js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="js/plugins/chartJs/Chart.min.js"></script>
<script src="js/plugins/dataTables/datatables.min.js"></script>
<script>
$(document).ready(function(){
	var id = <%=id%>;
	 $('#employee_table').DataTable({/* Creation of data table */
	    	ajax: "http://localhost:8080/careservices/rest/employee/work/"+id,
	    	'columnDefs' : [ {/* column defination (special property of perticular column) */
				'targets' : 0,/* 0th column */
				'searchable' : false,
				'orderable' : false,
				'className' : 'dt-body-center',
				'render' : function(data, type,full, meta) {/*render == to create   , data==value of that column,here is contact no.s  */
					return '<a href="caller.jsp?mobile=78965413365" <button class="btn btn-primary caller_button" type="button" id="'+ $("<div/>").text(data).html()+ '"><i class="fa fa-phone"></i>&nbsp;Call</button></a>';
				}
			} ]
	    }).on(/*call this function at the end of data table*/
				'draw.dt',/*default class that is call in the end of datatable*/
				function() {
					
					$('.caller_button').click(function(){
						var number = $(this).attr('id');
				 		alert('clicked '+number);
				 		
				 	});
					
				});
	 	
});
	
	
</script>


</html>