<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/web/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/membersite.css"/>

<script>
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
		location.href = "/web/member/manage.action?prSeq=" + n;
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
				
			<div class="info">	SITE URL : http://${pdto.prURL }</div>
			<div class="info">LAST UPDATA - </div> 
		</div>
		<div id="btn1">
			<div id="siteEdit" onclick=""><i class="fa fa-pencil"></i>사이트 편집</div>
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
		<div id="btn3"> <i class="glyphicon glyphicon-trash"></i><span>사이트 삭제</span> </div>
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
		<a href="" class="cts-box" >
			<span>궁금한 점이나 불편한 사항이 있으신가요? 의견 남겨주시면 바로 회신드리고 서비스에 적극 반영하도록 하겠습니다. <strong><b>1:1 문의하기</b></strong></span>
			<i class="fa fa-chevron-right"></i>
		</a>
	</div>
		
	
	
	<div id="analysisInfo">
		<div id="aInfo">
			<div id="in">
				<div>사이트 방문자 통계</div>
			</div>
			<div id="use">
 				<div>사용 용량</div> 
			</div>
		</div>	
	
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
	
		
