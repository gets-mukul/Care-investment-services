<!DOCTYPE html>

<html>
<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%
String backendUrl = "https://mysterious-stream-24750.herokuapp.com/";
%>
<title>CIS | Dashboard</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<link href="css/plugins/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet">
<link href="css/plugins/select2/select2.min.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">

					<div class="col-lg-2 tooltip-demo">
						<div class="widget style1 blue-bg" data-toggle="tooltip"
							data-placement="top" title="Contacts Assigned">
							<div class="row vertical-align">
								<div class="col-xs-3">
									<i class="fa fa-user-o fa-3x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<h2 class="font-bold" id="assigned"></h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 tooltip-demo">
						<div class="widget style1 navy-bg" data-toggle="tooltip"
							data-placement="top" title="Contacts Call Completed">
							<div class="row vertical-align">
								<div class="col-xs-3">
									<i class="fa fa-check-square-o fa-3x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<h2 class="font-bold" id="completed"></h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 tooltip-demo">
						<div class="widget style1 lazur-bg" data-toggle="tooltip"
							data-placement="top" title="Contacts Call Pending">
							<div class="row vertical-align">
								<div class="col-xs-3">
									<i class="fa fa-clock-o fa-3x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<h2 class="font-bold" id="pending">0</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 tooltip-demo">
						<div class="widget style1 white-bg" data-toggle="tooltip"
							data-placement="top" title="Contacts Busy/After some Time/Others"
							data-original-title="Tooltip on top">
							<div class="row vertical-align">
								<div class="col-xs-3">
									<i class="fa fa-pause fa-3x" aria-hidden="true"></i>
								</div>
								<div class="col-xs-9 text-right">
									<h2 class="font-bold" id="others">0</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 tooltip-demo">
						<div class="widget style1 yellow-bg" data-toggle="tooltip"
							data-placement="top" title="Contacts on Trial">
							<div class="row vertical-align">
								<div class="col-xs-3">
									<i class="fa fa-thumbs-up fa-3x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<h2 class="font-bold" id="trial">0</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 tooltip-demo">
						<div class="widget style1 red-bg" data-toggle="tooltip"
							data-placement="top" title="Contacts not Trade">
							<div class="row vertical-align">
								<div class="col-xs-3">
									<i class="fa fa-thumbs-down fa-3x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<h2 class="font-bold" id="not_trade">0</h2>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Contacts Summary Report</h5>
							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-md-4">

										<div class="form-group" id="data_5">
											<label class="font-noraml">Select Date Range</label>
											<div class="input-daterange input-group" id="datepicker">
												<input type="text" class="input-sm form-control"
													name="start" id="start" /> <span class="input-group-addon">to</span>
												<input type="text" class="input-sm form-control" name="end"
													id="end" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label class="font-noraml">Select Employee</label> 
											<select
												class="select2_demo_2 form-control" multiple="multiple"
												id="employee_list">

											</select>
										</div>


									</div>
									<div class="col-md-2">
										<div class="form-group">
											<button type="button" class="btn btn-primary btn-sm"
												style="margin-top: 25px;" id="filter_table">Filter</button>
										</div>
									</div>
								</div>
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example">
										<thead>
											<tr>
												<th>#</th>
												<th>Employee Name</th>
												<th>Assigned</th>
												<th>Completed</th>
												<th>Pending</th>
												<th>Trail</th>
												<th>Not Trade</th>
												<th>Other</th>
											</tr>
										</thead>
										<tbody>
											<%
                    for(int i =0;i<200;i++)
                    {
                    	%>
											<tr>
												<td>1</td>
												<td>Internet Explorer 4.0</td>
												<td>100</td>
												<td>100</td>
												<td>100</td>
												<td>100</td>
												<td>100</td>
												<td>100</td>
											</tr>
											<%
                    }%>

										</tbody>
										<tfoot>
											<tr>
												<th>#</th>
												<th>Employee Name</th>
												<th>Assigned</th>
												<th>Completed</th>
												<th>Pending</th>
												<th>Trail</th>
												<th>Not Trade</th>
												<th>Other</th>
											</tr>
										</tfoot>
									</table>
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
	</div>
</body>
<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="js/plugins/dataTables/datatables.min.js"></script>
<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script src="js/plugins/fullcalendar/moment.min.js"></script>

<!-- Date range picker -->
<script src="js/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
<script type="text/javascript">
$(document).ready()
{
	
	var dashboardUrl = '<%=backendUrl%>'+'rest/dashboard/admin/stats';
	 $.ajax({
        type: "GET",
        url: dashboardUrl,
        success: function(data)
        {
     		var assigned= 0;
     		var completed =0;
     		var pending =0;
     		var trial =0;
     		var notTrade =0;
     		var others =0;
     		assigned = data.ASSIGNED;
     		completed =data.COMPLETED;
     		pending =data.PENDING;
     		trial =data.TRIAL;
     		notTrade =data.NOT_TRADE;
     		others =data.OTHERS;
     		$('#assigned').text(assigned);
     		$('#completed').text(completed);
     		$('#pending').text(pending);
     		$('#trial').text(trial);
     		$('#not_trade').text(notTrade);
     		$('#others').text(others);
     		
        }
	  });
	
	 var employeeListUrl = '<%=backendUrl%>'+'rest/dashboard/admin/employee_list';
	 $.ajax({
        type: "GET",
        url: employeeListUrl,
        success: function(data)
        {
        	console.log(data);
     		$('#employee_list').html(data);
        }
	  });
	 
	
	$('#data_5 .input-daterange').datepicker({
	    keyboardNavigation: false,
	    forceParse: false,
	    autoclose: true,
	});

	$(".select2_demo_2").select2();
	
	$('#filter_table').on('click',function(){
		drawContactSummaryReport();
	});
				
	drawContactSummaryReport();

	
	
	
	
}

function drawContactSummaryReport()
{
	var startDate =null;
	if($('#start').val()!=''){
		startDate = $('#start').val();
		var formattedDate = new Date(startDate);
		var d = formattedDate.getDate();
		var m =  formattedDate.getMonth();
		m += 1;  // JavaScript months are 0-11
		var y = formattedDate.getFullYear();
		startDate =y+'-'+m+'-'+d; 
	}
	var endDate =null;
	if($('#end').val()!='')
	{
		endDate = $('#end').val();	
		var formattedDate = new Date(endDate);
		var d = formattedDate.getDate();
		var m =  formattedDate.getMonth();
		m += 1;  // JavaScript months are 0-11
		var y = formattedDate.getFullYear();
		endDate =y+'-'+m+'-'+d; 
	}
	var employeIds = null;
	if($('#employee_list').val().length>0)
	{
		employeIds = $('#employee_list').val();
	}	
	
	if ( $.fn.dataTable.isDataTable( '.dataTables-example' ) ) {
	    var table = $('.dataTables-example').DataTable();
	    table.destroy();
	    $('.dataTables-example').DataTable({
		    pageLength: 25,
		    responsive: true,
		    ajax :'<%=backendUrl%>'+'rest/dashboard/admin/contact_summary_report/'+startDate+'/'+endDate+'/'+employeIds
		});
	}
	else
		{
		$('.dataTables-example').DataTable({
		    pageLength: 25,
		    responsive: true,
		    ajax :'<%=backendUrl%>'+'rest/dashboard/admin/contact_summary_report/'+startDate+'/'+endDate+'/'+employeIds
		});
		}
	
}

</script>


</html>
