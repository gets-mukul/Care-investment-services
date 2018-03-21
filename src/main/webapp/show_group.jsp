
<!DOCTYPE html>
<%@page import="authentication.AppProperties"%>
<html>
<%
	String authApi = AppProperties.getProperty("auth_api");
	String backendUrl = AppProperties.getProperty("backend_url");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Messanger</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"
	rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="wrapper wrapper-content ">

				<div class="row">
					<jsp:include page="sms_template.jsp"></jsp:include>

					<div class="col-lg-9 animated fadeInRight">
						<div class="mail-box-header">
							<h2>Group Details</h2>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal">
								<div class="col-sm-6 tooltip-demo b-r">

									<label style="margin-bottom: 20px;">Group List</label> <i
										class="fa fa-plus tooltip-dem" data-placement="bottom"
										title="Add New Group" style="margin-left: 30px;"
										id="new_contact" data-toggle="modal" href="#modal-group-form"></i>

									<div id="modal-group-form" class="modal fade"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-body">
													<div class="row">
														<div class="col-lg-12">
															<div class="ibox float-e-margins">

																<h5>New Group Details</h5>



																<label>Group Name:</label> <input type="text"
																	class="form-control" placeholder="Enter Group Name"
																	style="margin-bottom: 20px;" id="newGroup">
																<button type="button" style="float: right"
																	class="btn btn-w-m btn-primary" id="modal-group-button"
																	name="groupName">Done</button>

															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>



									<div id="group_list"></div>

								</div>
								<div class="tooltip-demo">

									<label style="margin-left: 15px; margin-bottom: 15px;">Add
										Contact To This Group</label> <i class="fa fa-plus tooltip-dem"
										data-placement="bottom" title="Add New Contact"
										style="margin-left: 30px;" id="new_contact"
										data-toggle="modal" href="#modal-contact-form"></i>
									<div id="modal-contact-form" class="modal fade"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-body">
													<div class="row">
														<div class="col-lg-12">
															<div class="ibox float-e-margins">

																<h5>New Contact Details</h5>




																<label>Name:</label> <input type="text"
																	class="form-control" placeholder="Enter Full Name"
																	style="margin-bottom: 20px;" name="name" id="name">
																<label>Mobile:</label> <input type="text"
																	placeholder="Enter Mobile Number" class="form-control"
																	style="margin-bottom: 20px;" name="mobile" id="mobile">
																<button type="button" style="float: right"
																	class="btn btn-w-m btn-primary"
																	id="modal-contact-button">Done</button>

															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>

								</div>
								<div class="col-sm-6">
									<label>Contact List</label>
									<div id="contact_list">
										<div class="ibox float-e-margins">

											<table class="table" id="personDataTable">
												<thead>
													<tr>

														<th>Name</th>
														<th>Mobile</th>
														<th></th>
													</tr>
												</thead>

												<tbody id="table_body" class="tooltip-demo">
												</tbody>
											</table>



										</div>


									</div>
								</div>

								<div class="form-group"></div>

							</form>
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
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- Tags Input -->
<script src="js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

<script>
		$(document).ready(function() {
		
			
			
			$.ajax({
				url : '<%=backendUrl%>'+'rest/sms/list_group/'+'<%=authApi%>',				
				success : function(data,textStatus,jqXHR){
					var obj = data;
					var html = "";
					$
					.each(
							obj,
							function(
									key,
									value) {
								var name = value.name;
								var id = value.id;
								
								html +='<p><span class="label label-primary group-name" id="'+id+'">'+name+'</span><span class="pull-right"><i class="fa fa-times remove-group" id="'+id+'"></i></span></p>'
										
							});
							
							$('#group_list').html(html);
							

							$('.group-name').click(function(){
								
								var groupId = $(this).attr('id');
								
								
								$.ajax({
									url : '<%=backendUrl%>'+'rest/sms/show_list/'+'<%=authApi%>'+'/'+groupId,
									success : function(data,textStatus,jqXHR){
										
										var obj = data;
										var html = '';
										$
										.each(
												obj,
												function(
														key,
														value) {
													var name = value.name;
													var number = value.number;
													var contactId = value.contactid;
													//console.log(contactId);
													
													html += '<tr><td>' +name+ '</td><td>'+number+'</td><td><i class="fa fa-times remove_contact" id="'+contactId+'" data-toggle="tooltip" data-placement="bottom" title="Remove"></i></td></tr>';
													
												});
											$('#table_body').html(html);
											
											$('.remove_contact').click(function(){
												
												var contactId = $(this).attr('id');
												
												$.ajax({
													url : '<%=backendUrl%>'+'rest/sms/delete_contact',
													type : "POST",
													data : contactId,
													success: function(data){
														swal({
															title: "Are you sure?",
													        text: "You will not be able to send SMS to this contact!",
													        type: "warning",
													        showCancelButton: true,
													        confirmButtonColor: "#DD6B55",
													        confirmButtonText: "Yes, delete it!",
													        closeOnConfirm: false
											            }, function () {
											                swal("Deleted!", "Your contact has been deleted.", "success");
											            });
													}
													
												});
												
												
												
											});
								}
								});
								
								$('#modal-contact-button').click(function(){
									
									
									var name = document.getElementById("name").value;
									var mobile = document.getElementById("mobile").value;
									var jsonObj = {
											"name" : name,
											"mobile" : mobile,
											"group_id" : groupId
									}
									var contactDetails = JSON.stringify(jsonObj);

									$.ajax({
										url : '<%=backendUrl%>'+'rest/sms/add_contact',
										type: "POST",
										data : contactDetails,
										success: function(data){
											 swal({
								                title: "Success",
								                text: "Contact added successfully",
								                type: "success"
								            }); 
										}
										
									});
									$('#modal-contact-button').modal('toggle');
									location.reload()
								});
									
									
								});
							$('.remove-group').click(function(){
								var groupId = $(this).attr('id'); 
								
								 $.ajax({
										url : '<%=backendUrl%>'+'rest/sms/delete_group',
									type : "POST",
									data : groupId,
									
									success: function(data){
										swal({
											title: "Are you sure?",
									        text: "You will not be able to use this group!",
									        type: "warning",
									        showCancelButton: true,
									        confirmButtonColor: "#DD6B55",
									        confirmButtonText: "Yes, delete it!",
									        closeOnConfirm: false
							            }, function () {
							                swal("Deleted!", "Your group has been deleted.", "success");
							            });
									}
									
								});
								
							});
								
							
				
			}
			});
			
			
			
			
			
			
			$('#modal-group-button').click(function(){
				
				var groupName = document.getElementById("newGroup").value;
				 $.ajax({
					url: '<%=backendUrl%>'+ 'rest/sms/create_group',
										type : 'POST',
										data : groupName
									})
									$('#modal-group-button').modal('toggle');
									location.reload();
								});

						$('.tagsinput').tagsinput({
							tagClass : 'label label-primary'
						});

					});
</script>



</html>
