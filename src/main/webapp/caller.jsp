<!DOCTYPE html>

<%@page import="authentication.AppProperties"%>
<html>
<%
	String id = request.getSession().getAttribute("id").toString();
	String mob = request.getParameter("mobile");
	String backendUrl = AppProperties.getProperty("backend_url");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Customer Details</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="css/plugins/iCheck/custom.css" rel="stylesheet">

<link href="css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">

<link href="css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"
	rel="stylesheet">

<link href="css/plugins/colorpicker/bootstrap-colorpicker.min.css"
	rel="stylesheet">

<link href="css/plugins/cropper/cropper.min.css" rel="stylesheet">

<link href="css/plugins/switchery/switchery.css" rel="stylesheet">

<link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

<link href="css/plugins/nouslider/jquery.nouislider.css"
	rel="stylesheet">

<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">

<link href="css/plugins/ionRangeSlider/ion.rangeSlider.css"
	rel="stylesheet">
<link href="css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css"
	rel="stylesheet">

<link
	href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">

<link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

<link href="css/plugins/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet">

<link href="css/plugins/select2/select2.min.css" rel="stylesheet">

<link href="css/plugins/touchspin/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet">

<link href="css/plugins/dualListbox/bootstrap-duallistbox.min.css"
	rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg sidebar-content">
			<jsp:include page="header.jsp"></jsp:include>

			<div class="wrapper wrapper-content">

				<!-- --------------------------------------------------------------------------------------->
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<h3 class="m-t-none m-b">Client Details</h3>
							<div class="ibox-content">
								<form class="form-horizontal" id="my-form" role="form">
									<div class="col-sm-8 b-r">

										<div class="form-group">
											<label>Name</label>

											<input type="text" placeholder="Customer name"
													class="form-control" id="name">
										</div>

										<div class="form-group">
											<label>Status</label>

											<select class="form-control m-b" name="account4" id='status'>
													<option value="NOT_TRADE">Not Trade</option>
													<option value="TRIAL">Trail</option>
													<option value="NOT_PICKED">Call not Picked</option>
													<option value ="NO_NETWORK">Not Connect</option>
													<option value="BUSY">Busy</option>
													<option value="AFTER_SOME_TIME">After Some Time</option>
													<option value="SWITCH_OFF">Switched Off</option>
													<option value="NOT_REACHABLE">Not Reachable</option>
												</select>
										</div>
										

										
										
										<div class="form-group col-sm-4" id="data_1" style="    margin-left: -30px; margin-right: 10px;">
											<label>Trail
													Start Date</label>
											<div class="input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input type="text"
													class="form-control" value="03/04/2014"
													id='trail-start-date'>
											</div>
										</div>
										<div class="form-group col-sm-4"  id="data_2" style="    margin-right: 10px;">
											<label><b>Trail End
													Date</b></label>
											<div class="input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input type="text"
													class="form-control" value="03/04/2014" id="trail-end-date">
											</div>
										</div>
										
										
										<div class="form-group col-sm-4" style="margin-right:18px;">
											<label><b>Time</b></label>
											<div class="input-group clockpicker"
												data-autoclose="true">
												<input type="text" class="form-control" value="00:00"
													id="time"> <span class="input-group-addon">
													<span class="fa fa-clock-o"></span>
												</span>

											</div>
										</div>
										<div class="form-group">
											<label>Segment</label>
											<select class="form-control m-b" name="account3"
													id='segment'>
													<option value="EQUITY">EQUITY</option>
													<option value="FUTURE">FUTURE</option>
													<option value="OPTION">OPTION</option>
												</select>
										</div>
										<div class="form-group">
											<label>Secrip</label>
											<select class="select2_demo_2 form-control m-b" name="account1" id='scrip'>
													
												</select>
										</div>
										<div class="form-group">
											<label>Location</label>
											<select class="form-control m-b" name="account6"
													id='location'>
													<option value="OPTION"></option>
													<option value="OPTION">Not Trade</option>
													<option value="OPTION">Trail</option>
													<option value="OPTION">Not Pic Call</option>
													<option>Not Connect</option>
													<option>Busy</option>
													<option>After Some Time</option>
													<option>Switched Off</option>
													<option>Not Reachable</option>
												</select>
										</div>

										<div class="form-group">
											<label class="col-sm-2 control-label">Cash</label>
											<div class="col-sm-10">
												<select class="form-control m-b" name="account5" id='cash'>
													<option></option>
													<option>Not Trade</option>
													<option>Trail</option>
													<option>Not Pic Call</option>
													<option>Not Connect</option>
													<option>Busy</option>
													<option>After Some Time</option>
													<option>Switched Off</option>
													<option>Not Reachable</option>
												</select>
											</div>
										</div>

										
										<div class="form-group"></div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<div class="col-sm-3">
												<label class="control-label">Long/Short</label>
											</div>
											<div class="col-sm-9	" style="padding-left: 0px">
												<select class="form-control m-b" name="account2"
													id='long-short'>
													<option></option>
													<option>Long</option>
													<option>Short</option>
												</select>
											</div>
										</div>

										

										<div class="form-group" id="data_3">
											<label class="col-sm-3 font-normal"><b>Expiry
													Date</b></label>
											<div class="col-sm-9 input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input type="text"
													class="form-control" value="03/04/2014" id="expiry-date">
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">Strike Price</label>

											<div class="col-sm-9">
												<input type="number" class="form-control" id="strike-price">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Lot Size/Qty</label>

											<div class="col-sm-9">
												<input type="number" class="form-control" id="lot-size-qty">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Buy/Sell</label>

											<div class="col-sm-9">
												<input type="number" class="form-control" id="buy-sell">
											</div>
										</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">First Target</label>
	
												<div class="col-sm-9">
													<input type="number" class="form-control" id="first-target">
												</div>
											</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Second Target</label>

											<div class="col-sm-9">
												<input type="number" class="form-control" id="second-target">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Stop Loss</label>

											<div class="col-sm-9">
												<input type="number" class="form-control" id="stop-loss">
											</div>
										</div>
									</div>

									<div class="form-group">
										<button type="submit" style="float: right"
											class="btn btn-w-m btn-primary" id="submit">Submit</button>
									</div>

								</form>
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

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Chosen -->
<script src="js/plugins/chosen/chosen.jquery.js"></script>

<!-- JSKnob -->
<script src="js/plugins/jsKnob/jquery.knob.js"></script>

<!-- Input Mask-->
<script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>

<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- NouSlider -->
<script src="js/plugins/nouslider/jquery.nouislider.min.js"></script>

<!-- Switchery -->
<script src="js/plugins/switchery/switchery.js"></script>

<!-- IonRangeSlider -->
<script src="js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>

<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>

<!-- MENU -->
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

<!-- Color picker -->
<script src="js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>

<!-- Clock picker -->
<script src="js/plugins/clockpicker/clockpicker.js"></script>

<!-- Image cropper -->
<script src="js/plugins/cropper/cropper.min.js"></script>

<!-- Date range use moment.js same as full calendar plugin -->
<script src="js/plugins/fullcalendar/moment.min.js"></script>

<!-- Date range picker -->
<script src="js/plugins/daterangepicker/daterangepicker.js"></script>

<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>

<!-- TouchSpin -->
<script src="js/plugins/touchspin/jquery.bootstrap-touchspin.min.js"></script>

<!-- Tags Input -->
<script src="js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

<!-- Dual Listbox -->
<script src="js/plugins/dualListbox/jquery.bootstrap-duallistbox.js"></script>
<script>
	$(document).ready(function() {

		$("#my-form").submit(function(e) {
			e.preventDefault();
			var name = $('#name').val();
			var status = $('#status').val();
			var cash = $('#cash').val();
			var location = $('#location').val();
			var trail = $('input[name="chk[]"]:checked').length
			var trailStartDate = $('#trail-start-date').val();
			var traiEndDate = $('#trail-end-date').val();
			var time = $('#time').val();
			var scrip = $('#scrip').val();
			var longShort = $('#long-short').val();
			var segment = $('#segment').val();
			var expiryDate = $('#expiry-date').val();
			var strikePrice = $('#strike-price').val();
			var lotsizeQty = $('#lot-size-qty').val();
			var buySell = $('#buy-sell').val();
			var firstTarget = $('#first-target').val();
			var secondTarget = $('#second-target').val();
			var stopLoss = $('#stop-loss').val();

			var mobile =<%=mob%>;

			var jsonObj = {
				"name" : name,
				"status" : status,
				"cash" : cash,
				"location" : location,
				"trail" : trail,
				"trail_start_date" : trailStartDate,
				"trail_end_date" : traiEndDate,
				"time" : time,
				"scrip" : scrip,
				"long_short" : longShort,
				"segment" : segment,
				"expiry_date" : expiryDate,
				"strike_price" : strikePrice,
				"lot_size_qty" : lotsizeQty,
				"buy_sell" : buySell,
				"first_target" : firstTarget,
				"second_target" : secondTarget,
				"stop_loss" : stopLoss,
				"mobile" : mobile
			}
			

			var stringData = JSON.stringify(jsonObj);

			var formData = new FormData();
			formData.append('data', stringData);
			$.ajax({
				url : '<%=backendUrl%>'+'rest/client/trail/',
				type : 'POST',
				data : stringData,

			});

		});
		
		var scripCodeUrl = '<%=backendUrl%>'+'rest/scrip/code';
		 $.ajax({
	        type: "GET",
	        url: scripCodeUrl,
	        success: function(data)
	        {
	        	
	     		$('#scrip').html(data);
	        }
		  });

		$('.i-checks').iCheck({
			checkboxClass : 'icheckbox_square-green',
			radioClass : 'iradio_square-green',
		});

		$('#data_1 .input-group.date').datepicker({
			todayBtn : "linked",
			keyboardNavigation : false,
			forceParse : false,
			calendarWeeks : true,
			autoclose : true
		});
		$('#data_2 .input-group.date').datepicker({
			todayBtn : "linked",
			keyboardNavigation : false,
			forceParse : false,
			calendarWeeks : true,
			autoclose : true
		});
		$('#data_3 .input-group.date').datepicker({
			todayBtn : "linked",
			keyboardNavigation : false,
			forceParse : false,
			calendarWeeks : true,
			autoclose : true
		});
		
		
		
		$(".select2_demo_2").select2();

		

	});
</script>



</html>
