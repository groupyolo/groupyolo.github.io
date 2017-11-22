<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/membersite.css"/>
<script src="https://code.highcharts.com/highcharts.src.js"></script>
<script src="${pageContext.request.contextPath}/js/circles.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-109683796-1"></script>
<script>

<!-- Global site tag (gtag.js) - Google Analytics -->
/*   window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-109683796-1'); */

 
 
  <!-- Google Analytics -->

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-109683796-1', 'auto');
  ga('send', 'pageview');
  
  ga(function(tracker) {
	  // Logs the tracker created above to the console.
	  console.log(tracker);
	  // Logs the trackers name.
	  // (Note: default trackers are given the name "t0")
	  console.log(tracker.get('name'));

	  // Logs the client ID for the current user.
	  console.log(tracker.get('clientId'));

	  // Logs the URL of the referring site (if available).
	  console.log(tracker.get('referrer'));
	});
  
  ga('set', {
	  page: '/about',
	  title: 'About Us'
	});
  
  ga('myTracker.set', 'page', '/about');
  
  ga(function(tracker) {
	  tracker.set('page', '/about');
	});
  
  ga(function(tracker) {
	  // Gets the title using the analytics.js field name.
	  console.log(tracker.get('title'));

	  // Gets the title using the measurement protocol
	  // parameter name, prefixed with an ampersand.
	  console.log(tracker.get('&dt'));
	});
  <!-- End Google Analytics -->
  
  

	$(document).ready(function() {
		$('#btn2').click(function() {
			$("#siteInfo").toggle();
		})
		
/* 		$('#bimg').mouseenter(function() {
			$('#bimg').css("opacity", "1");
		}) */
	});
	function site(e) {
		var n =e.value;
		location.href = "${pageContext.request.contextPath}/member/manage.action?prSeq=" + n;
	}
	
	function sitedel() {
		var seq;
			<c:forEach items="${jlist}" var="jdto">
				if (${jdto.grade} = '팀장') {
					seq = ${jdto.mSeq};
				}
			</c:forEach>
	
		if (confirm("정말 삭제하시겠습니까?")) {
			if (seq ==  ${loginDTO.mSeq}) {
				location.href='${pageContext.request.contextPath}/member/prdelok.action?prSeq=${pdto.prSeq }';
			}	else {
				alert("권한이 없습니다.");
			}		
		}
		
	}
</script>

	
	<div id="mySite">
		<div id="img">
			<div id="bimg">
				<span>
					<c:forEach items= "${plist}" var="dto">
						<c:if test="${dto.prSeq == pdto.prSeq}">
							${dto.state}
						</c:if>
					</c:forEach>	
				</span>
			</div>
	</div>
		<div id="site">
			<select onchange="site(this)"  class="form-control">
				<option value="${pdto.prSeq }">${pdto.siteName}</option>
				<c:forEach items= "${plist}" var="dto">
						<c:if test="${dto.siteName != pdto.siteName}">
							<option value="${dto.prSeq}" >
								${dto.siteName}
						<!-- 		<div><input type="button" value ="선택"/></div>
								<div><input type="button" value ="보기"/></div> -->
							</option>
						</c:if>
				</c:forEach>
			</select>
				
			<div class="info">	SITE URL <span style="margin-left:35px;"> http://${pdto.prURL }</span></div>
			<div class="info">LAST UPDATA <span style="margin-left:5px;">-</span> </div> 
		</div>
		<div id="btn1">
			<div id="siteEdit" onclick="location.href='${pageContext.request.contextPath }/member/creation/projectedit.action?prSeq=${pdto.prSeq}'" ><i class="fa fa-pencil"></i>사이트 편집</div>
			<div id="upgrade"><i class="fa fa-level-up"></i>업그레이드 </div>
		</div>	
	</div>

	<div id="btn2"><span>사이트관리</span><i class="glyphicon glyphicon-cog"></i></div>
	<div id="siteInfo" >
		<div id="detail">
			<div id="info">
				<div class="title">기본정보</div>
				<ul>
					<li class="detail-url">
						<label>주소</label>
						<span>http://${pdto.prURL}</span>
					</li>
					<li class="detail-sname">
						<label>브라우저 타이틀</label>
						<span>${pdto.siteName}</span>
					</li>
					<li class="detail-pub">
						<label>	게시상태	 </label>
						<span> 
							<c:forEach items= "${plist}" var="dto">
								<c:if test="${dto.prSeq == pdto.prSeq}">
									${dto.state}
								</c:if>
							</c:forEach>
						</span>
					</li>
					<li class="detail-analytics">
						<label>Google analytics <i class="fa fa-question-circle hand" data-toggle="popover" data-html="true" data-placement="top" data-content="구글 애널리틱스는 웹 로그 전문 분석 툴입니다. <b>Trackid</b> 를 등록하여 바로 내 사이트를 분석해보세요~^^ <a href='http://www.google.com/analytics' target='_blank'>자세히 보기</a>"></i></label>
						<span class='google-analytics'>
							<span class='btn btn-default btn-sm register-google'>등록</span>
						</span>
					</li>
				</ul>
			</div>
			<div id="fee">
				<div class="title">요금제 및 도메인</div>
				
				<ul>
					<li class="detail-plan">
						<label>요금제</label>
						<span class='plan-name'>무료</span>
						 <a href="/upgrade/site/" class="upgrade"><span>업그레이드</span></a>
					</li>
					<li class="detail-domain">
						<label>외부 도메인 연결</label>
						<span>연결 된 도메인이 없습니다.</span>
						<a href="javascript:;" class="domain" data-plan="">설정</a>
					</li>
					<li class="detail-analytics">
						<label>Facebook pixel <i class="fa fa-question-circle hand" data-toggle="popover" data-html="true" data-placement="top" data-content="Facebook pixel은 페이스북 광고 캠페인을 측정 및 최적화하고 타겟을 구축할 수 있게 해주는 툴입니다. <b>Facebook pixel ID</b>를 입력하여 최적화된 페이스북 광고를 만들어 보세요~^^. <a href='https://www.facebook.com/business/help' target='_blank'>자세히 보기</a>"></i></label>
						<span class='facebook-analytics'>
						<span class='btn btn-default btn-sm register-facebook'>등록</span>
						</span>
					</li>
				</ul>
		</div>
		</div>
		<div id="btn3" onclick="sitedel();"> <i class="glyphicon glyphicon-trash"></i><span>사이트 삭제</span> </div>
	</div>

	<c:if test="${count != 0 }">
		<div id="projectInfo">
			<div id="projectName">
				<h6>프로젝트</h6>	
					<ul>
						<li> 
							<label>프로젝트명</label>
							<span> ${pdto.prName}</span>
						</li>
					</ul>
			</div>
			<div id="projectPart">
				<h6>참가 정보</h6>
				<ul>
					<c:forEach items="${jlist}" var="jdto">
						<li>
							<label>${jdto.mNickName}  </label>
							<spna>${jdto.mEmail }</spna>
						</li>
					</c:forEach>
				</ul>
			</div>	
		</div>	
	</c:if>
		
	<div class="site-cts">
		<a href="${pageContext.request.contextPath }/inquiry/list.action" class="cts-box" >
			<span>궁금한 점이나 불편한 사항이 있으신가요? 의견 남겨주시면 바로 회신드리고 서비스에 적극 반영하도록 하겠습니다. <strong><b>1:1 문의하기</b></strong></span>
			<i class="fa fa-chevron-right"></i>
		</a>
	</div>
		
	
	
	<div id="analysisInfo">
		<div id="aInfo">
			<div id="in">
					<div class="site-sub-title">사이트 방문자 통계</div>
					<div class='visit-date'>
						<div class='change-date-box'>
							  <input id="site-visit-start" type="date" class="form-control" value="2017-11-16" aria-describedby="site visit start date">
							<span class="fa"> ~</span>
							  <input id="site-visit-end" type="date" class="form-control" value="2017-11-22" aria-describedby="site visit end date">
						</div>
					</div>
					<ul class='visit-info legend'>
						<li>
							<label>오늘</label>
							<span class="count today-visit">0</span>
						</li>
						<li>
							<label>전체</label>
							<span class="count total-visit">1</span>
						</li>
					</ul>

					<div  id="container" class="visit-chart"></div>
					
		<script type="text/javascript">
			Highcharts.chart('container', {
			
			    title: {
			        text: ''
			    },
			
			    xAxis: {
			       tickInterval: 1 
			    },
			
			    yAxis: {
			       /* type: 'logarithmic', */
			        minorTickInterval: 0.1 
			    },
						    
			    tooltip: {
			        headerFormat: '<b>{series.name}</b><br />',
			        pointFormat: 'x = {point.x}, y = {point.y}'
			    },
			
			    series: [{
			        data: [0, 0, 1, 0, 0, 0, 0],
			        pointStart: 16
			    }]
			});
			
			$(".highcharts-legend-item").remove();
			$(".highcharts-credits").css("font-size","0px");
		</script>
			</div>
			<div id="use">
 				<div id="use-info">사용 용량</div> 
 				<div id="tr-info">트래픽 사용(월)</div>
 				<div style="clear:both;"></div>
 				<div id="circles1"></div>
 				<div id="circles2"></div>
			</div>
		</div>	
	
		<script>
			var myCircle = Circles.create({
				  id:                  'circles1',
				  radius:              75,
				  value:               8,
				  maxValue:         200,
				  width:               10,
				  text:                function(value){return value;},
				  colors:              ['#eee', 'rgb(85, 98, 116)'],
				  duration:         70
				 
				});
			
			var myCircle = Circles.create({
				  id:                  'circles2',
				  radius:              75,
				  value:               8,
				  maxValue:         200,
				  width:               10,
				  text:                function(value){return value;},
				  colors:              ['#eee', 'rgb(85, 98, 116)'],
				  duration:         70
				 
				});
		</script>
	<div role="tabpanel" id=inbox>
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active">
		    	<a href="#all" aria-controls="all" role="tab" data-toggle="tab">
		    		<div class="count not-mobile all">0</div>
					<div class="type">전체</div>
				</a>
			</li>
		    <li role="presentation">
		    	<a href="#comments" aria-controls="comments" role="tab" data-toggle="tab">
		    		<div class="count not-mobile comments">0</div>
					<div class="type">댓글</div>	
		    	</a>
		    </li>
		   	<li role="presentation">
		   		<a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">
		   			<div class="count not-mobile messages">0</div>
					<div class="type">컨택트</div>
		   		</a>
		   	</li>
		    <li role="presentation">
		    	<a href="#board" aria-controls="board" role="tab" data-toggle="tab">
		    		<div class="count not-mobile board">0</div>
					<div class="type">게시판</div>
		    	</a>
		    </li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="all"><span>새로운 소식이 없습니다.</span></div>
		    <div role="tabpanel" class="tab-pane" id="comments"><span>댓글이 없습니다.</span></div>
		    <div role="tabpanel" class="tab-pane" id="messages"><span>메시지가 없습니다.</span></div>
		    <div role="tabpanel" class="tab-pane" id="board"><span>게시물이 없습니다.</span></div>
		  </div>
	</div>
</div>
	
		
