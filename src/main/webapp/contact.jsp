<!DOCTYPE html>
<html>
<%
	String userId = request.getSession().getAttribute("id").toString();
	
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Contacts</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">

<link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg sidebar-content">
			
			<input type="hidden" value="<%=userId%>" name="user_id" id="user_id">
			<div class="wrapper wrapper-content animated fadeIn"
				style="padding-right: 0px !important;">
				<div class="row">
					<div class="col-lg-5">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Upload Contact Numbers</h5>
							</div>
							<div class="ibox-content">
								<div class="fileinput fileinput-new input-group"
									data-provides="fileinput">
									<div class="form-control" data-trigger="fileinput">
										<i class="glyphicon glyphicon-file fileinput-exists"></i> <span
											class="fileinput-filename"></span>
									</div>
									<span class="input-group-addon btn btn-default btn-file">
										<span class="fileinput-new">Select file</span> <span
										class="fileinput-exists">Change</span> <input type="file"
										name="..." class="ephoto-upload">
									</span> <a href="#"
										class="input-group-addon btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
								<a href="contact.xlsx" class="btn btn-primary btn-xs">Download</a>
								sample excel sheet of contact numbers

							</div>
						</div>
					</div>
					
					


				</div>
				<div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tab-1"> Unassigned Contacts</a></li>
                            <li class=""><a data-toggle="tab" href="#tab-2">Assigned Contacts</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane active">
                                <div class="panel-body">
                                <form id="frm-example" action="/path/to/your/script"
									method="POST">

									<a style="display: none;margin-bottom: 12px;" data-toggle="modal"
										class="btn btn-primary" href="#modal-form"
										id="assign_employee" >Click here to assign contacts to employees</a>
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
	
									
								</form>
                                   <div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover dataTables-example"
											id="data_table">
											<thead>
												<tr>
													<th></th>
													<th>Mobile</th>
													<th>Upload Date</th>
													<th>Uploaded By</th>
													<th>Contact Name</th>
													<th>Location</th>
													<th>Assigned To</th>

												</tr>
											</thead>

											<tfoot>
												<tr>
													<th></th>
													<th>Mobile</th>
													<th>Upload Date</th>
													<th>Uploaded By</th>
													<th>Contact Name</th>
													<th>Location</th>
													<th>Assigned To</th>

												</tr>
											</tfoot>
										</table>
									</div></div>
                            </div>
                            <div id="tab-2" class="tab-pane">
                                <div class="panel-body">
                                   <div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover dataTables-example"
											id="assigned_table">
											<thead>
												<tr>
													<th></th>
													<th>Mobile</th>
													<th>Upload Date</th>
													<th>Uploaded By</th>
													<th>Contact Name</th>
													<th>Location</th>
													<th>Assigned To</th>

												</tr>
											</thead>

											<tfoot>
												<tr>
													<th></th>
													<th>Mobile</th>
													<th>Upload Date</th>
													<th>Uploaded By</th>
													<th>Contact Name</th>
													<th>Location</th>
													<th>Assigned To</th>

												</tr>
											</tfoot>
										</table>
									</div></div>
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
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- Jasny -->
<script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>
<!-- Sparkline demo data  -->
<script src="js/demo/sparkline-demo.js"></script>
<!-- ChartJS-->
<script src="js/plugins/chartJs/Chart.min.js"></script>
<script src="js/plugins/dataTables/datatables.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						$("#assign_employee")
								.click(
										function(e) {
											$
													.ajax({
														url : 'http://localhost:8080/careservices/rest/employee/task_status',
														type : "get",
														dataType : "json",
														success : function(
																data,
																textStatus,
																jqXHR) {
															// since we are using jQuery, you don't need to parse response
															console.log(data);
															var obj = data;
															var html = '';
															$
																	.each(
																			obj,
																			function(
																					key,
																					value) {
																				var name = value.name;
																				var totalTask = value.total_task;
																				var pendingTask = value.pending_task;
																				
																				html += '<tr><td><input class="radioButton_class" type="radio" value="'+value.id+'" id="optionsRadios'+value.id+'" name="optionsRadios"></td><td>'
																						+ name
																						+ '</td><td>'
																						+ pendingTask
																						+ '</td><td>'
																						+ totalTask
																						+ '</td></tr>';
																				
																			});
															
															$('#table_body')
																	.html(html);
														}
													});
											function drawTable(data) {
												for (var i = 0; i < data.length; i++) {
													drawRow(data[i]);
												}
											}
											function drawRow(rowData) {
												var row = $("<tr />")
												$("#personDataTable").append(
														row); //this will append tr element to table... keep its reference for a while since we will add cels into it
												row.append($("<td>"
														+ rowData.name
														+ "</td>"));
												row.append($("<td>"
														+ rowData.penddingTask
														+ "</td>"));
												row.append($("<td>"
														+ rowData.totalTasks
														+ "</td>"));
											}
										});
						var userId = $('#user_id').val();
						$('#assigned_table')
						.DataTable(
								{
									"ajax" : "http://localhost:8080/careservices/rest/abc/assigned_contact",									
									pageLength : 25,
									responsive : true,
									dom : '<"html5buttons"B>lTfgitp',
									buttons : [
											{
												extend : 'copy'
											},
											{
												extend : 'csv'
											},
											{
												extend : 'excel',
												title : 'ExampleFile'
											},
											{
												extend : 'pdf',
												title : 'ExampleFile'
											},
											{
												extend : 'print',
												customize : function(
														win) {
													$(win.document.body)
															.addClass(
																	'white-bg');
													$(win.document.body)
															.css(
																	'font-size',
																	'10px');
													$(win.document.body)
															.find(
																	'table')
															.addClass(
																	'compact')
															.css(
																	'font-size',
																	'inherit');
												}
											} ]
								})
						;
				;
						
						$('#data_table')
								.DataTable(
										{
											"ajax" : "http://localhost:8080/careservices/rest/abc/unassigned_contact",
											'columnDefs' : [ {
												'targets' : 0,
												'searchable' : false,
												'orderable' : false,
												'className' : 'dt-body-center',
												'render' : function(data, type,
														full, meta) {
													return '<input type="checkbox" class="contact-checkBox-list" name="id[]" value="'
															+ $("<div/>").text(
																	data)
																	.html()
															+ '">';
												}
											} ],
											pageLength : 25,
											responsive : true,
											dom : '<"html5buttons"B>lTfgitp',
											buttons : [
													{
														extend : 'copy'
													},
													{
														extend : 'csv'
													},
													{
														extend : 'excel',
														title : 'ExampleFile'
													},
													{
														extend : 'pdf',
														title : 'ExampleFile'
													},
													{
														extend : 'print',
														customize : function(
																win) {
															$(win.document.body)
																	.addClass(
																			'white-bg');
															$(win.document.body)
																	.css(
																			'font-size',
																			'10px');
															$(win.document.body)
																	.find(
																			'table')
																	.addClass(
																			'compact')
																	.css(
																			'font-size',
																			'inherit');
														}
													} ]
										})
								.on(
										'draw.dt',
										function() {
											$('.contact-checkBox-list')
													.change(
															function() {
																var countCheckedCheckboxes = $(
																		'.contact-checkBox-list')
																		.filter(
																				':checked').length;
																
																if (countCheckedCheckboxes == 0) {
																	$(
																			"#assign_employee")
																			.hide();
																} else {
																	$(
																			"#assign_employee")
																			.show();
																}
															});
										});
						;
						$('.ephoto-upload')
								.change(
										function() {
											previewURL(this);
											if ($(this).val() != '') {
												var formData = new FormData();
												formData.append('file',
														$(this)[0].files[0]);
												$
														.ajax({
															url : 'http://localhost:8081/careservices/rest/excel/upload/'
																	+ userId,
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
											}
										});
						function previewURL(input) {
							if (input.files && input.files[0]) {
								var reader = new FileReader();
								reader.onload = function(e) {
									//$('#prevImg').attr('src', e.target.result);
									$('#preview').css(
											"background",
											"url(" + e.target.result + ")"
													+ " right top no-repeat");
								}
								reader.readAsDataURL(input.files[0]);
							}
						}
						
						$('#modal-button').click(function(){
							
							var emplId;
							var contactArray = new Array();
							
							
							$('.contact-checkBox-list').filter(':checked').each(function( index ) {
								  
								  contactArray.push($( this ).val());
								});
							$('.radioButton_class').filter(':checked').each(function( index ) {
								  
								  emplId = $( this ).val();
								}); 
							
							var contact = contactArray.toString();
							if(emplId!=null && contact!=null)
							{
		
						
						$.ajax({
							url: 'http://localhost:8080/careservices/rest/task/assign/'+emplId+'/'+userId+'/'+contact,
							type : 'get'
						});  
						$('#modal-form').modal('toggle');
						location.reload();
							}
							
							
							});
					});
</script>

</html>