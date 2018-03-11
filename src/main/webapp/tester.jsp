<%@page import="authentication.AppProperties"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String backendUrl = AppProperties.getProperty("backend_url");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tester</title>
</head>
<body>

<form>
<input type="file" style="width:200px" class="findDocumentOnboarding" name="uploadfile">
<input type="button" value="Submit" id="submit" />
</form>
</body>

<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>

<script>
$(document).ready(function() {
	  $('#submit').click(submitForm);
	  console.log("work done");
	});      
	 
	function submitForm() {
		console.log("inside method");
	  var file = $('input[name="uploadfile"').get(0).files[0];
	 
	  var formData = new FormData();
	  formData.append('uploadfile', file);
	 
	  $.ajax({
		  ajax: '<%=backendUrl%>'+'rest/excel/trail_data',
	      type: 'POST',
	      xhr: function() {  // Custom XMLHttpRequest
	        var myXhr = $.ajaxSettings.xhr();
	        return myXhr;
	      },
	      success: function(data) {
	        alert('successfully uploaded file ');
	      },
	      data: formData,
	      cache: false,
	      contentType: false,
	      processData: false
	    });
	}

		
</script>
</html>