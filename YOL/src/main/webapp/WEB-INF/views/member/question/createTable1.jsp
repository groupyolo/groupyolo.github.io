<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<style>
	#createTbl {
		width: 500px;
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	#createTbl tr{
		border: 1px solid black;
		text-align:center;
		padding: 10px;
	}
	#createTbl td { border: 1px solid black; padding: 10px;}
	
	#createTbl tr:nth-child(1) {width: 70px; };
	#createTbl tr:nth-child(2) {width: 400px; };
	#createTbl td input { width: 300px;};
</style>

<script>
		
		var count = 2;
		var cols = "cols" + count;

	$(document).ready(function() {
		

		
		$("#add").click(function() {
			console.log(cols);
			var row = "<tr>";
			
				row += "<th>열 제목" + count + "</th>";
				row += "<td><input type='text' id='cols" + count + "' name='cols" + count + "'> <a href='#' id='remove'>-</a></td>";
				row += "</tr>";
					
				$("#createTbl tbody").append(row);
				
				count++;
			
		});
		
		$("#remove").click(function() {
			
			$(this).closest("#createTbl tbody tr").remove();
			
		});

		
		
	});
	


	
	

</script>

<form method="post" action="${pageContext.request.contextPath}/question/createTable.action">  
	<table id="createTbl">
		<tr>
			<th>크기</th>
			<td><input type="text" id="width" name="width"> px</td>
		</tr>
		<tr>
			<th>높이</th>
			<td><input type="text" id="height" name="height"> px</td>
		</tr>
		<tr>
			<th>색깔</th>
			<td><input type="color" id="color" name="color"></td>
		</tr>
		<tr>
			<th>열 제목1</th>
			<td><input type="text" id="cols1" name="cols1"></td>
		</tr>
		
	</table>
	<input type="button" value="열 추가"  id="add">
	<input type="submit" value="전송">
</form>


