<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jointeam.css">
<script>
	$(document).ready(function() {
		
		$(".teamjj").hide();
		
		//모집 마감일때, 멤버 신청 불가능
		if(${tdto.activeState == 'n'} || (${tdto.mCount == tdto.jCount})) {
			$("#btn_joinMember").attr("disabled",true);
		}
		
		//로그인한 사람이 글 쓴사람이 일 때, 수정/삭제 버튼 보여주기
		if(${loginDTO.mNickName == tdto.mNickName}) {
			$(".teamjj").show();
		}

	}); 
	
	function memberAdd(mSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/joinMemberAdd.action",
			data:"mSeq="+mSeq+"&reSeq=${tdto.reSeq}",
			dataType:"json",
			success:function(data) {
				//console.log(data);
				if(data == "1") {
					console.log("성공");
					
					var date = new Date(); 
					var year = date.getFullYear(); 
					var month = new String(date.getMonth()+1); 
					var day = new String(date.getDate()); 

					// 한자리수일 경우 0을 채워준다. 
					if(month.length == 1){ 
					  month = "0" + month; 
					} 
					if(day.length == 1){ 
					  day = "0" + day; 
					} 
					var regDate = year + "-" + month + "-" + day;
					var tr = "<tr><td>${loginDTO.mNickName}</td><td>"+regDate+"</td><td>미승인</td></tr>";
					$("#applyTbl tbody").append(tr);
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function memberCancle(mSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/joinMemberCancle.action",
			data:"mSeq="+mSeq+"&reSeq=${tdto.reSeq}",
			dataType:"json",
			success:function(data) {
				//console.log(data);
				if(data == "1") {
					console.log("성공");
					
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
</script>
	<div class="core_top">
		<h2 class="boxBasic">글보기</h2>
	</div>
	
	<div id="viewTbl" class="boxBasic">
		<table class="table">
			<tr>
				<td colspan="2"><span>${tdto.reSeq}</span><span><b>${tdto.mNickName}</b></span><span>${tdto.jRegDate}</span></td>
			</tr>
			<tr>
				<td colspan="2"><b>${tdto.jSubject}</b> <span>${tdto.sName}</span></td>
			</tr>
			<tr>
				<td>
					현재 멤버수 : ${tdto.mCount} / 모집인원 : ${tdto.jCount}
				</td>
				<td>프로젝트 기간 : ${tdto.jStart} ~ ${tdto.jEnd}</td>
			</tr>
			<tr>
				<td colspan="2">${tdto.jContent}</td>
			</tr>
		</table>
	</div>
	<div id="applyTbl" class="boxBasic">
		<h4><b>멤버 신청자</b></h4>
		<table class="table">
			<thead>
			<tr>
				<th>닉네임</th>
				<th>신청시간</th>
				<th>상태</th>				
			</tr>
			</thead>
			<tbody>
		<%-- 	<c:set var="loop" value="1"/> --%>
			<c:forEach items="${mlist}" var="mdto">
			<tr id="tr_jSeq${mdto.jSeq}">
				<td>${mdto.mNickName}</td>
				<td>${mdto.jRegDate}</td>
				<td>${mdto.gradeName}</td>
			</tr>
			<script>				
				/* <c:if test="${loginDTO.mNickName == mdto.mNickName && loop == 1}">
				//로그인한 사람이 신청한사람일 때, 멤버 취소 버튼 보여주기
					if(${mdto.apSeq == 0} || ${mdto.apSeq == 1} || ${mdto.apSeq == 4}) {					
						$("#btn_cancleMember").show();
						$("#btn_joinMember").hide();
						<c:set var="loop" value="0"/>
					}
				</c:if> */
			</script>
			</c:forEach>
			</tbody>
		</table>
	<!-- ajax로 -->	
	<div id="btns_member">
		 <input type="button" class="btn" value="JOIN MEMBER" id="btn_joinMember" onclick="memberAdd(${loginDTO.mSeq});"/>
		<!-- 조건; 신청이 완료된 멤버 && 미승인시 && 모집글 마감 전 -->
		 <input type="button" class="btn" value="CANCEL MEMBER" id="btn_cancleMember" onclick="memberCancle(${loginDTO.mSeq});"/>
	</div>
		
	<!-- 여기까지 ajax -->
	</div>
	<div id="btns_list" class="boxBasic">
		<input type="button" value="BACK" class="btn" onclick="history.back();"/>
		<input type="button" value="WRITE" class="btn" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamAdd.action';"/>
		<!-- 로그인 확인 후 아이디 맞으면 보여줌  -->
		<input type="button" value="EDIT" class="teamjj btn" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamEdit.action?reSeq=${tdto.reSeq}';"/>
		<input type="button" value="DELETE" class="teamjj btn" onclick="location.href='${pageContext.request.contextPath}/member/joinTeamDel.action?reSeq=${tdto.reSeq}';"/>
	</div>
	
<c:set var="loop" value="1" />
<script>	
$("#btn_cancleMember").hide();
<c:forEach items="${mlist}" var="mdto">		
	<c:if test="${loginDTO.mNickName == mdto.mNickName && loop == 1}">
		//로그인한 사람이 신청한사람일 때, 멤버 취소 버튼 보여주기
		if(${mdto.apSeq == 0} || ${mdto.apSeq == 1} || ${mdto.apSeq == 4}) {					
			$("#btn_cancleMember").show();
			$("#btn_joinMember").hide();
			<c:set var="loop" value="0" />
		}
		
		//로그인한 사람이 신청한 사람일때, 승인처리되었거나 거절이거나 게시글 마감일때
		if (${mdto.apSeq == 1} || ${mdto.apSeq == 2} || ${tdto.activeState == 'n'}) {
			$("#btn_cancleMember").attr("disabled",true);
		}
		
	</c:if>
</c:forEach>
</script>