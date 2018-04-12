<!DOCTYPE html>

<%@page import="authentication.AppProperties"%>
<html>
<%
	String id = request.getSession().getAttribute("id").toString();
	String trialId = request.getParameter("trial_id");
	String mob = request.getParameter("mob");
	String segmentId = request.getParameter("segment_id");
	String backendUrl = AppProperties.getProperty("backend_url");
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Trial</title>

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
 <!-- Sweet Alert -->
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


</head>

<body class="fixed-navigation">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>

			<div class="wrapper wrapper-content">

				<!-- --------------------------------------------------------------------------------------->
				<div class="row">
					<div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Trail Details</h5>
                        
                    </div>
                    <div class="ibox-content" ng-app="myApp11">
                        <div class="row">
                            
                                <form role="form" id="submit_task" action="/xyz.jsp" method="get">
                                <div class="col-sm-6 b-r">
                                <input type="hidden" name="trial_id" value="<%=trialId%>" id="trial_id">
                                <div class="form-group"><label>Contact No.</label> 
                                <input type="text" disabled="" value="<%=mob%>" class="form-control">
                                </div>
                                    <div class="form-group" id="segment" ng-controller="segments_control"><label>Segment</label> 
                                    <select class="form-control" name="segment_id">                     
                                    <option value="-1">Select Segment</option>           
                                    <option value="{{y.id}}" ng-repeat="y in segments">{{y.name}}</option>
                                    </select>
                                    </div>
                                    <div class="form-group" id="equity" ng-controller="equity_control"><label>Equity Scrip</label> 
                                    <select class="form-control" name="equity_scrip_id">
                                   	<optgroup label="{{x.name}}" ng-repeat="x in equity_child">
                                   	<option value="{{y.id}}" ng-repeat="y in x.children">{{y.name}}</option>
                                   	</optgroup>
                                    </select>
                                    </div>                                     
                                   
                                    <div class="form-group" id="derivative"  ng-controller="derivative_control"><label>Derivative Scrip</label> 
                                    <select class="form-control" name="derivative_scrip_id">
                                   	<optgroup label="{{x.name}}" ng-repeat="x in derivative_child">
                                   	<option value="{{y.id}}" ng-repeat="y in x.children">{{y.name}}</option>
                                   	</optgroup>
                                    </select>
                                    </div>
                                    <div class="form-group" id="commodity"  ng-controller="commodity_control">
                                    <label>Commodity Scrip</label> 
                                    <select class="form-control" name="commodity_scrip_id">
                                   	<optgroup label="{{x.name}}" ng-repeat="x in commodity_child">
                                   	<option value="{{y.id}}" ng-repeat="y in x.children">{{y.name}}</option>
                                   	</optgroup>
                                    </select>
                                    </div> 
                                    <div class="form-group col-sm-6 equity_not_required" id="expiry_date" style=";margin-left: -15px;">
                                	<label>Expiry Date</label>
                                	<div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" name="expiry_date">
                                	</div>
                            		</div>
                                    </div>
                                    <div class="col-sm-6 b-r">
                                    <div class="radio radio-inline" style="margin-top: 30px;">
                                            <input type="radio" id="long" value="LONG" name="long_short" class="long_short_selector">
                                            <label for="inlineRadio2"> LONG</label>
                                        </div>
                                        <div class="radio radio-inline" style="margin-top: 30px;">
                                            <input type="radio" id="short" value="SHORT" name="long_short" class="long_short_selector">
                                            <label for="inlineRadio2"> SHORT </label>
                                    </div>
                                   
                            		<div class="row" style="margin-top: 23px;">
                                    <div class="form-group col-sm-4 equity_not_required"><label>Strike Price</label> 
                                    <input type="number" placeholder="Enter strike price" class="form-control" name="strike_price" id="strike_price">
                                    </div>
                                    <div class="form-group col-sm-4 equity_not_required"><label>Lot Size</label> 
                                    <input type="number" placeholder="Enter strike price" class="form-control" name="lot_size" id="lot_size">
                                    </div>
                                   	<div class="form-group col-sm-4 equity_required" ><label>Quantity</label> 
                                    <input type="number" placeholder="Enter quantity" class="form-control" name="quantity" id="quantity">
                                    </div>
                                    </div>
									<div class="row">
									<div class="form-group col-sm-4 long"><label>Buy</label> 
                                    <input type="number" placeholder="Enter Buy Value" class="form-control" name="buy" id="buy">
                                    </div>
                                   <div class="form-group col-sm-4 short"><label>Sell</label> 
                                    <input type="number" placeholder="Enter Sell Value" class="form-control" name="sell" id="sell">
                                    </div>
                                    </div>
                                    <div class="row">
                                    <div class="form-group col-sm-4"><label>1st TARGET</label> 
                                    <input type="number" placeholder="First Target" class="form-control" name="first_target" id="first_target">
                                    </div>
                                    <div class="form-group col-sm-4"><label>2nd TARGET</label> 
                                    <input type="number" placeholder="Second Target" class="form-control" name="second_target" id="second_target">
                                    </div>
                                   	<div class="form-group col-sm-4"><label>STOP LOSS</label> 
                                    <input type="number" placeholder="Stop Loss Value" class="form-control" name="stop_loss" id="stop_loss">
                                    </div>
                                    </div>
                                    <div>
                                        <button id="submit_button" class="btn btn-sm btn-primary pull-right m-t-n-xs" type="button"><strong>Submit</strong></button>
                                    </div>   
                                </div>
                                </form>
                            
                           
                        </div>
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
<script src="js/angular.min.js"></script>
<script src="js/angular-sanitize.js"></script>
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
<script src="js/plugins/sweetalert/sweetalert.min.js"></script>

<script>

var url ='<%=backendUrl%>'+ 'rest/segment/parent/-1';
var url_derivative ='<%=backendUrl%>'+ 'rest/segment/derivative';
var url_commodity ='<%=backendUrl%>'+ 'rest/segment/commodity';
var url_equity ='<%=backendUrl%>'+ 'rest/segment/equity';

var app = angular.module('myApp11', []);
app.controller('segments_control', function($scope, $http) {
    $http.get(url)
    .then(function (response) {
   		 $scope.segments = response.data.records;
   	 });
    });
    
    

app.controller('equity_control', function($scope, $http) {
    $http.get(url_equity)
    .then(function (response) {
   		 $scope.equity_child = response.data.records;
   	 });
   	 $('#equity select').select2();	
	
    });
    
app.controller('derivative_control', function($scope, $http) {
    $http.get(url_derivative)
    .then(function (response) {    	
   		 $scope.derivative_child = response.data.records;
   	 });
    	$('#derivative select').select2();	
	
    });

app.controller('commodity_control', function($scope, $http) {
    $http.get(url_commodity)
    .then(function (response) {
   		 $scope.commodity_child = response.data.records;
   	 });
  	  $('#commodity select').select2();
    }); 
    
    
 	$(document).ready(function() {
 		var segmentId = <%=segmentId%>;
 		$('#expiry_date .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            format: 'dd-mm-yyyy'
        });
		
 		$('#equity').hide();	
		$('#derivative').hide();	
		$('#commodity').hide();	
 			

		$('#segment select').unbind().on('change', function(){						
			$('#derivative').hide();
			$('#commodity').hide();
			$('#equity').hide();
			var value = $('#segment select option:selected').text();
			if(value==='EQUITY')
			{
				$('#equity').show();
				$('.equity_not_required').hide();				
			}
			else if(value==='DERIVATIVE')
			{
				$('#derivative').show();
				$('.equity_not_required').show();
				
				//$('#commodity').hide();	
			}
			else if(value==='COMMODITY'){
				//$('#derivative').hide();
				$('.equity_not_required').show();
				$('#commodity').show();	
				
			}	
			
		});
		
		
		$("input[name='long_short']").unbind().on('change', function(){	
			var val = $(this).val();
			if(val==='LONG')
			{
				$('.long').show();
				$('.short').hide();
			}else if (val==='SHORT')
			{
				$('.long').hide();
				$('.short').show();
			}	
		});
		function getFormData($form){
		    var unindexed_array = $form.serializeArray();
		    var indexed_array = {};

		    $.map(unindexed_array, function(n, i){
		        indexed_array[n['name']] = n['value'];
		    });

		    return indexed_array;
		}
		$('#submit_button').unbind().on('click', function(e){
			e.preventDefault();
			var segmentId = $('#segment select option:selected').val();
			var scripId =null;
			var value = $('#segment select option:selected').text();
			if(value==='EQUITY')
			{
				scripId = $('#equity select option:selected').val();
			}
			else if(value==='DERIVATIVE')
			{
				scripId = $('#derivative select option:selected').val();
			}
			else if(value==='COMMODITY'){
				scripId = $('#commodity select option:selected').val();
			}
			var expiryDate=$('#expiry_date input').val();
			var longShortValue=$('input[name=long_short]:checked').val();
			var strikePrice =$('#strike_price').val();
			var lotSize=$('#lot_size').val();
			var quantity =$('#quantity').val();
			var buyValue=$('#buy').val();
			var sellValue=$('#sell').val();
			var firstTargetValue=$('#first_target').val();
			var secondTarget=$('#second_target').val();
			var stopLossValue=$('#stop_loss').val();
			if(segmentId==-1)
			{
				swal({
	                title: "Segment is mandatory.",
	                text: "Segment cannot be left empty."
	            });
			}
			else if(scripId=='null' || scripId=='')
			{
				swal({
	                title: "Scrip is mandatory.",
	                text: "Scrip cannot be left empty."
	            });
			}else
			{
				
				
				var $form = $("#submit_task");
				var data = getFormData($form);
				var submitTrialUrl ='<%=backendUrl%>'+ 'rest/trial/submit/<%=trialId%>';
				$.ajax({
					  type: "POST",
					  url:submitTrialUrl,
					  data: JSON.stringify(data),
					 
					  success: function(data) {
						  location.href='employee.jsp'
					  },
					  error: function(data) {alert("ajax error"); },
					  dataType: 'json',
					  contentType: 'application/json; charset=utf-8',
					});
			}	
			
		});
		
	}); 
</script>



</html>
