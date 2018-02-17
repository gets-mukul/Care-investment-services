<!DOCTYPE html>

<html>
<%
String id = request.getSession().getAttribute("id").toString();
String backendUrl = "https://mysterious-stream-24750.herokuapp.com/";
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Dashboard</title>

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

			<div class=" wrapper-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							
							<div class="col-lg-12">
                    <div class="tabs-container">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tab-1">Incomplete</a></li>
                            <li class=""><a data-toggle="tab" href="#tab-2">Trail</a></li>                            
                            <li class=""><a data-toggle="tab" href="#tab-4">Others</a></li>
                            <li class=""><a data-toggle="tab" href="#tab-3">Not Trade</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane active">
                                <div class="panel-body">
                                    <div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example"
										id="employee_table">
										<thead>
											<tr>
												<th>Contact</th>
												<th>Assigned On</th>
												
												</tr>
										</thead>
										<tfoot>
											<tr>
												<th>Contact</th>
												<th>Assigned On</th>												
												</tr>
										</tfoot>
									</table>
								</div>
                                </div>
                            </div>
                            <div id="tab-2" class="tab-pane">
                                <div class="panel-body">
                                </div>
                            </div>
                            <div id="tab-3" class="tab-pane">
                                 <div class="panel-body">
                                </div>
                            </div>
                            <div id="tab-4" class="tab-pane">
                                 <div class="panel-body">
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
	    	ajax: <%=backendUrl%>+"rest/employee/incomplete/"+id,
	    	'columnDefs' : [ {/* column defination (special property of perticular column) */
				'targets' : 0,/* 0th column */
				'searchable' : true,
				'orderable' : true,
				'className' : 'dt-body-center',
				'render' : function(data, type,full, meta) {
					return '<a href="caller.jsp?mobile='+data+'" <button class="btn btn-primary caller_button" type="button" id="'+ data+ '"><i class="fa fa-phone"></i>&nbsp;'+data+'</button></a>';
				}
			} ]
	    });
	 	
});
	
	
</script>


</html>