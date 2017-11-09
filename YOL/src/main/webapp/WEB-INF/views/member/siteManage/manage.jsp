<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/web/js/jquery-1.12.4.js"></script>
<script>
	function site(e) {
		var n =e.value;
		location.href = "/web/member/manage.action?prSeq=" + n;
	}
</script>

	<h1>사이트 관리</h1>
	
	<select onchange="site(this)">
		<option value="${pdto.prSeq }">${pdto.siteName}</option>
		<c:forEach items= "${plist}" var="dto">
				<c:if test="${dto.siteName != pdto.siteName}">
					<option value="${dto.prSeq}" >${dto.siteName}</option>
				</c:if>
		</c:forEach>
	</select>
	
	<div>사이트 편집 </div>
	<div>업그레이드 </div>
	
	<br>
	<div>	SITE URL : http://${pdto.prURL }</div>
		<div>LAST UPDATA - </div>
		
		<h3>기본정보</h3>
		<div>	주소    http://${pdto.prURL} </div>
		<div>	브라우저 타이틀 ${pdto.siteName} </div>
		<div>	게시 
			<c:forEach items= "${plist}" var="dto">
				<c:if test="${dto.prSeq == pdto.prSeq}">
					${dto.state}
				</c:if>
			</c:forEach>
			</div>
		<h3>요금제 및 도메인</h3>
		<div>요금제    무료			업그레이드  </div>
		<div>외부도메인   연결된 도메인이 없습니다.	 설정 </div>
		
		<br /><br />
		<c:if test="${count != 0 }">
			<div>
				프로젝트명 ${pdto.prName}
			</div>
			<div>
				<div>참가정보</div>
				<div>닉네임 이메일</div>
				<c:forEach items="${jlist}" var="jdto">
					<div>${jdto.mNickName} / ${jdto.mEmail }</div>
				</c:forEach>
			</div>		
		</c:if>
		
		<div>궁금한 점이나 불편한 사항이 있으신가요? 의견 남겨주시면 바로 회신드리고 서비스에 적극 반영하도록 하겠습니다. <b>1:1문의하기</b></div>
		
		
