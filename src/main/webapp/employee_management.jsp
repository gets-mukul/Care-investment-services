<!DOCTYPE html>


<html>
<%
String backendUrl = "https://mysterious-stream-24750.herokuapp.com/";
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Employee Management System</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg sidebar-content">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="row">
				<div class="col-lg-12">
					<div class="tabs-container">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#tab-1">
									Employee List</a></li>

						</ul>
						<div class="tab-content">
							<div id="tab-1" class="tab-pane active">
								<div class="panel-body">
									<!-------------------------------------------------------------------------------------------- cc -->
									<div class="col-lg-12">
										<div class="ibox float-e-margins">

											<div class="ibox-content">

												<div class="table-responsive">
													<table
														class="table table-striped table-bordered table-hover dataTables-example"
														id="data_table">
														<thead>
															<tr>
																<th>Id</th>
																<th>Name</th>
																<th>Email</th>
																<th>Mobile no.</th>
																<th>User Type</th>
																

															</tr>
														</thead>
														<tbody id="table_body"></tbody>

														<tfoot>
															<tr>
																<th>Id</th>
																<th>Name</th>
																<th>Email</th>
																<th>Mobile no.</th>
																<th>User Type</th>
																

															</tr>
														</tfoot>
													</table>
												</div>

											</div>
										</div>

										<!-------------------------------------------------------------------------------------------- cd -->



									</div>
								</div>

							</div>


						</div>
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
	<script src="js/plugins/sweetalert/sweetalert.min.js"></script>
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
	$(document)
			.ready(
					function() {

						$
								.ajax(
										{
											'url' : <%=backendUrl%>+"rest/employee/list",
											'method' : "GET",
											'contentType' : 'application/json',

										})
								.done(
										function(data) {
											$('#data_table')
													.dataTable(
															{
																"aaData" : data,
																"columns" : [
																		
																		{
																			"data" : "id"
																		},
																		{
																			"data" : "name"
																		},
																		{
																			"data" : "email"
																		},
																		{
																			"data" : "mobile"
																		},
																		{
																			"data" : "user_type"
																		}],

																'columnDefs' : [ {
																	'targets' : 4,
																	'searchable' : false,
																	'orderable' : false,
																	'className' : 'dt-body-center',
																	'render' : function(
																			data,
																			type,
																			full,
																			meta) {
																		
																		var currentUserType = data;
																		var selectHtml = '<select class="form-control m-b user_type" name="account">';
																		
																		var isEmployee='';
																		var isAdmin='';
																		if(currentUserType.toLowerCase()==='employee')
																		{
																			isEmployee ='selected';
																		}
																		else if(currentUserType.toLowerCase()==='admin')
																		{
																			isAdmin='selected';
																		}
																		selectHtml+='<option '+isEmployee+' value="EMPLOYEE">EMPLOYEE</option>';
																		selectHtml+='<option '+isAdmin+' value="ADMIN">ADMIN</option>';																		
																		selectHtml +='</select>';																																	
																		return selectHtml;
																	}
																} ],
																
															}).on('draw.dt',function() {
																dropdownHandler();
															});
											
											dropdownHandler();

											
										})

					});
	
	function dropdownHandler()
	{
		$('.user_type').change(function(){
			var userType = $(this).val();			
			var id = $(this).parent().siblings(":first").text()
			$
			.ajax(
					{
						'url' :<%=backendUrl%>+'rest/employee/change_user_type/'+id+'/'+userType,
						'method' : "GET",
						'contentType' : 'application/json',
						success: function(data)
			   	           {
							 var jsonData = data;
				             var status = jsonData.status;
				             var message = jsonData.message;
			   	        	  
				               if(status == true)
				           		{
				            	   swal({
						                title: "Success",
						                text: data.message,
						                type: "success"
						            });
				           		}
				               else
				            	  {
				            	   swal({
						                title: "Failure",
						                text: data.message,
						                type: "success"
						            });
				            	  } 
							
					}
					}) 
		})
	}
</script>


</html>
