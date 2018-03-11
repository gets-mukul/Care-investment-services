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

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>

			<div class="wrapper wrapper-content">

				<!-- --------------------------------------------------------------------------------------->
				<div class="row">
					<div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Call Details</h5>
                        
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-6 b-r">
                                <form role="form">
                                    <div class="form-group"><label>Status</label> 
                                    <select class="form-control" id="status">
                                    <option value="NOT_TRADE">NOT_TRADE</option>
									<option value="TRIAL">TRIAL</option>									
									<option value="BUSY">BUSY</option>
									<option value="NOT_PICKED">NOT_PICKED</option>
									<option value="NO_NETWORK">NO_NETWORK</option>
									<option value="MOBILE_DOESNOT_EXIST">MOBILE_DOESNOT_EXIST</option>
									<option value="CALL_LATER">CALL_LATER</option>
									<option value="SWITCH_OFF">SWITCH_OFF</option>
									<option value="NOT_REACHABLE">NOT_REACHABLE</option>
									<option value="AFTER_SOME_TIME">AFTER_SOME_TIME</option>
                                    </select></div> 
                                    <div class="row">
                                   	 <div class="form-group col-sm-4" id="start_date">
                                	<label class="font-normal">Start Date</label>
                                	<div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control">
                                	</div>
                            		</div>
                            		<div class="form-group clockpicker col-sm-4" id="start_time" data-autoclose="true">
                            		<label class="font-normal">Start Time</label>
                                	<input type="text" class="form-control">
                                	
                            		</div>
                            		
                                    <div class="form-group col-sm-4" id="end_date">
                                	<label class="font-normal">End Date</label>
                                	<div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control">
                                	</div>
                            		</div>
                                   	</div>
                                     
                                    <div class="form-group" id="segment"><label>Segment</label> 
                                    <select class="form-control" multiple>
                                    <option value="EQUITY">Equity</option>
                                    <option value="DERIVATIVE">Derivative</option>
                                    <option value="COMMODITY">Commodity</option>
                                    </select></div>
                                    
                                    <div class="form-group" id="derivative"><label>Derivative</label> 
                                    <select class="form-control" >
                                    <option>Future</option>
                                    <option>Option</option>
                                    </select></div>
                                    <div class="form-group" id="commodity" ng-app="myApp" ng-controller="myCtrl"><label>Commodity</label> 
                                    <select class="form-control">
                                   	<optgroup label="{{x.name}}" ng-repeat="x in commodity_child">
                                   	<option value="{{y.id}}" ng-repeat="y in x.children">{{y.name}}</option>
                                   	</optgroup>
                                    </select>
                                    </div>
                                   	                                    
                                    <div>
                                        <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>Submit</strong></button>
                                        
                                    </div>
                                </form>
                            </div>
                           
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript" src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>
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

var url ='<%=backendUrl%>'+ 'rest/segment/commodity';			
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get(url)
    .then(function (response) {
   	 $scope.commodity_child = response.data.records;
   	 });
    });
    
    
	$(document).ready(function() {
		$('#data_1 .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
		$('#data_2 .input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
		$('.clockpicker').clockpicker();

		$('#segment').hide();	
		$('#derivative').hide();	
		$('#commodity').hide();	
		$('#start_date').hide();	
		$('#start_time').hide();	
		$('#end_date').hide();	
		$('#status').unbind().on('change', function(){
			if($(this).val()=='TRIAL')
			{				
				$('#segment').show();
				$('#start_date').show();	
				$('#start_time').show();	
				$('#end_date').show();	
			}
			else
			{
				$('#segment').hide();	
				$('#derivative').hide();	
				$('#commodity').hide();	
			}	
		});
		$('#segment select').unbind().on('change', function(){
			$('#derivative').hide();
			$('#commodity').hide();	
			$.each( $(this).val(), function( index, value ) 
			{
				if(value==='EQUITY')
				{
						
				}
				if(value==='DERIVATIVE')
				{
					$('#derivative').show();
					//$('#commodity').hide();	
				}
			    if(value==='COMMODITY'){
					//$('#derivative').hide();
					$('#commodity').show();	
				}
			});				
		});		
	});
</script>



</html>
