<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script>
	$(document).ready(function() {
		$("#recruitMember").hide();
		//alert(${tlist.size() != 0});
	})
	
	function showMember(reSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/teamMasterMember.action",
			data:"reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				$("#memberList tbody").html("");
				$("#recruitMember").show();
				var n = 1;
				$(data).each(function (index, item) {				
					//var jSeq = item.jSeq;
					var tr = "<tr><td>"+n+"</td><td>"+item.mNickName+"</td><td>"+item.jRegDate+"</td><td>"+item.gradeName+"</td><td><input type='button' value='승인' id='btnApprove"+item.jSeq+"' onclick='approve("+item.mSeq+","+item.reSeq+");'> <input type='button' id='btnReject"+item.jSeq+"' value='거절' onclick='reject("+item.mSeq+","+item.reSeq+");'></td></tr>"
					$("#memberList tbody").append(tr);
					n++;
					if(item.apSeq == '1' || item.apSeq == '2') {
						//버튼 비활성
						/* 
						var btnApprove = "btnApprove"+item.jSeq;
						$("#" + btnApprove).attr("disabled",true);
						var btnReject = "btnReject"+item.jSeq;
						$("#" + btnReject).attr("disabled",true); 
						*/
						$("#" + "btnApprove" + item.jSeq).attr("disabled",true);
						$("#" + "btnReject" + item.jSeq).attr("disabled",true);
					}
				});
				
			},
			error:function() {
				alert("실패");
			}			
		});
	}
	
	function approve(mSeq, reSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/approveMember.action",
			data:"mSeq="+mSeq,
			dataType:"json",
			success:function(data) {
				
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function reject(mSeq, reSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/rejectMember.action",
			data:"mSeq="+mSeq+"&reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				//리젝 시키고
				//성공하면 결과 변경	
				console.log(data);
				if(data.result == "1") {
					console.log("성공");
					showMember(reSeq);
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
</script>
</head>
<body>
	<h1>팀 마스터 페이지</h1>
	<div id="projectTbl"> <!--  -->
		<table></table>
	</div>
	<div id="recruitTbl"> <!-- 모집중 -->	
		<table>
			<tr>
				<th>제목</th>
				<th>시작일 ~ 종료일</th>
				<th>인원수</th>
			</tr>
			<c:if test="${tlist.size() eq 0}">
				<tr>
					<td colspan="3">결과가 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${tlist.size() ne 0}">
				<c:forEach items="${tlist}" var="tdto">
				<tr id="btnMember" onclick="showMember(${tdto.reSeq});" style="cursor:pointer;">
					<td>${tdto.jSubject}</td>
					<td>${tdto.jStart}~${tdto.jEnd}</td>
					<td>${tdto.mCount}/${tdto.jCount}</td>
				</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
	<h3>새 멤버 요청</h3>
	<div id="searchMember">
		<input type="text" name="mEmail"  />
		<input type="button" value="회원검색"  />
	</div>
	<div id="addMember">		
		<form action="${pageContext.request.contextPath}/member/addMember.action" method="post">
			<input type="text" id="btnAddMember" />
			<input type="submit" value="멤버요청"/>
		</form>
	</div>
	<div id="recruitMember">
		<h3>신청자 리스트</h3>
		<table id="memberList">
			<thead>
				<tr>
					<th>번호</th>
					<th>닉네임</th>
					<th>신청일</th>
					<th>상태</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>	
</body>
</html>