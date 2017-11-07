<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Dialog - Default functionality</title>
  <link rel="stylesheet" href="/web/resources/css/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  function popmodal(){
    $( "#step1" ).dialog({
    	width: 450,height:	520,
    	modal:true
    });
  };
  </script>
</head>
<body>
 
 <input type="button" id="popup" value="모달체크" onclick="popmodal();"/>
	 	 
	<div id="step1" title="Creation" style="display: none;">
	  <iframe src="/web/member/creationstep1.action" frameborder="0" style="width:98%; height:98%;" ></iframe>
	</div>
	 
 
</body>
</html>