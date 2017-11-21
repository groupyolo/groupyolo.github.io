<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<style>

 #joined{
 	width:700px;
 	text-align: center;
 	margin:0px auto;
 }

 #joined img{
 	width:700px;
 	text-align: center;
 }
 
 #calendar_basic{
 	float:right;
 	
 	margin-top:50px;
 }

#core{
	height:1100px;
}

 #sick h2{
 	color:lightgrey;
 	margin-bottom:10px;
 }
 #records{

 	text-align: right;
 	padding:20px;
 }

</style>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["calendar"]});
      google.charts.setOnLoadCallback(drawChart);

   function drawChart() {
       var dataTable = new google.visualization.DataTable();
       dataTable.addColumn({ type: 'date', id: 'Date' });
       dataTable.addColumn({ type: 'number', id: 'Won/Loss' });

       dataTable.addRows([
    	   <c:forEach items="${clist}" var="dto">
    	   [ new Date(${dto.year}, ${dto.mon-1}, ${dto.day}), ${dto.cnt} ],
   			</c:forEach>
        ]);

       var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));

       var options = {
    		title: '접속 기록',
    		width: 720,
    		height: 200,

   		   calendar: {
   			   	cellSize:12,

   		   }  
    		   
       };

       chart.draw(dataTable, options);
   }
   
</script>

<div id="myinfo">
	
	
	<div id="profile">
		<img id="profilepic" src="http://farm5.static.flickr.com/4009/4643860882_171119865c.jpg" alt="" />
		<div class="vcard">
			<span>${loginDTO.mNickName }</span>
		</div>
		<input type="button" value="Edit profile" onclick="location.href='${pageContext.request.contextPath }/member/editprofile.action';">
		<div id="jdate">
			<span>가입일 : ${loginDTO.mDate.substring(0,10)}</span>		
		</div>
		
	</div>
	
	<div id="sick" style=" display:inline-block; float:right; width:700px; height:300px; border-bottom:1px solid lightgrey;">
		<h2>${loginDTO.mNickName } 님과 함께한 YOL의 기록</h2>
		<div id="records">
		<p>지금까지 3번의 프로젝트 생성과</p><br />
		<p>4번의 프로젝트 참여,</p><br />
		<p>27번의 자유게시판 글쓰기,</p><br />
		<p>지금까지 3번의 프로젝트 생성과</p><br />
		<p>하셨습니다.</p>
		</div>
	</div>
	
	
	<div id="calendar_basic"></div>
	
	
	<div id="prodetails">
			<div id="joined">
				<img src="${pageContext.request.contextPath }/resources/images/profile-joined-github.png" alt="" />
			</div>
			<div>
				<span>Joined on ${loginDTO.mDate.substring(0,10)}</span>
			</div>
	</div>

</div>