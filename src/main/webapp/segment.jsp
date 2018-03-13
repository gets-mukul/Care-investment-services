
<!DOCTYPE html>
<%@page import="authentication.AppProperties"%>
<html>
<%
	String authApi = AppProperties.getProperty("auth_api");
	String backendUrl = AppProperties.getProperty("backend_url");
	int parentId = -1;
	if(request.getParameter("parent_id")!=null)
	{
		parentId = Integer.parseInt(request.getParameter("parent_id"));
	}
%>

<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Jan 2018 18:27:22 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CIS | Segment</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="css/plugins/summernote/summernote.css" rel="stylesheet">
<link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
<link href="css/plugins/select2/select2.min.css" rel="stylesheet">
<link href="css/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"
	rel="stylesheet">
<link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>

<body class="fixed-navigation" ng-app="myApp">
	<div id="wrapper">
		<jsp:include page="menu.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="wrapper wrapper-content ">

				<div class="row">

					<div class="ibox-content">
						<div id="group_list" ng-controller="segment_list">
						<ul class="unstyled" ng-repeat="x in segment">
						<li><a href="segment.jsp?parent_id={{x.id}}"><span class="label label-primary segment-name" id="{{x.id}}">{{x.name}}</span><span class="pull-right"></span></a></li>
						</ul>
						<i class="fa fa-plus tooltip-dem" data-toggle="modal" data-target="#myModal6" style="margin-left: 40px;"></i>&nbsp;&nbsp;<label>Add New Segment</label>
						<div class="modal inmodal fade" id="myModal6" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">New Segment</h4>
                                        </div>
                                        <div class="modal-body">
                                         <input type="text" placeholder="" class="form-control" id="segment_name">  
                                        </div>
                                        <div class="modal-footer">
                                            
                                            <button type="submit" class="btn btn-primary" id="new_segment_button">Add Segment</button>
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

<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>

<!-- SUMMERNOTE -->
<script src="js/plugins/summernote/summernote.min.js"></script>

<!-- Select2 -->
<script src="js/plugins/select2/select2.full.min.js"></script>

<!-- Tags Input -->
<script src="js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.min.js"></script>
<script type="text/javascript" src="http:////ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-sanitize.js"></script>

<script>


var url ='<%=backendUrl%>'+'rest/segment/parent/'+'<%=parentId%>';	
var app = angular.module('myApp', []);
app.controller('segment_list', function($scope, $http) {
    $http.get(url)
    .then(function (response) {
   	 $scope.segment = response.data.records;
   	 });
});
$('#new_segment_button').click(function(){
	var segmentName = document.getElementById("segment_name").value;
	$.ajax({
		
		url : '<%=backendUrl%>'+'rest/segment/add_segment/'+'<%=parentId%>'+'/'+segmentName,
		type: "GET",
		success: function(){
			 swal({
                title: "Success",
                text: "Segment added successfully",
                type: "success"
            }); 
		}
		
	});
	$('#new_segment_button').modal('toggle');
	location.reload()
	
	});
	



	</script>



</html>
