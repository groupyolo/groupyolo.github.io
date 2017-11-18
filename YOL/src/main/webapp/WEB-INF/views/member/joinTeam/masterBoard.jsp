<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jointeam.css">
<script>
	$(document).ready(function() {
		$("#memberTbl").hide();
		$("#requestTbl").hide();
		$("#btnAddMember").attr("disabled",true);
		//alert(${tlist.size() != 0});
	});
	
	function showMember(reSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/teamMasterMember.action",
			data:"reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				$("#memberList tbody").html("");
				$("#memberTbl").show();
				$("#requestTbl").show();
				var n = 1;

				console.log(data.length);										
				
				
				$(data).each(function (index, item) {				
					//var jSeq = item.jSeq;
					var tr = "<tr><td>"+n+"</td><td>"+item.mNickName+"</td><td>"+item.jRegDate+"</td><td>"+item.gradeName+"</td><td><input type='button' value='승인' class='btn' id='btnApprove"+item.jSeq+"' onclick='approve("+item.mSeq+","+item.reSeq+");'> <input type='button' id='btnReject"+item.jSeq+"' value='거절' class='btn' onclick='reject("+item.mSeq+","+item.reSeq+");'> <input type='hidden' id='listHidden'></td></tr>"
					$("#memberList tbody").append(tr);
					n++;
					$("#listHidden").val();
					if(item.apSeq != '0') {
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
		
		
		if($("#mCount").text() == $("#jCount").text()) {
			$("#btnSearch").attr("disabled",true);
		}
		
	}
	
	function approve(mSeq, reSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/approveMember.action",
			data:"mSeq="+mSeq+"&reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				console.log(data);
				var mCount = "#mCount" + reSeq;
				if(data == 1) {
				var temp = parseInt($(mCount).text()) + 1;
					$(mCount).text(temp);					
					showMember(reSeq);
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function reject(mSeq, reSeq) { //완료
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/rejectMember.action",
			data:"mSeq="+mSeq+"&reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				//리젝 시키고
				//성공하면 결과 변경	
				//console.log(data);
				if(data == 1) {
					//console.log("성공");
					showMember(reSeq);
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function searchMember() {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/searchMember.action",
			data:"mEmail="+$("#mEmail").val(),
			dataType:"json",
			success:function(data) {
				console.log(data);
				//$("#mEmail").val("");
				$(data).each(function(index, item) {
					var nickName = $("#memberList tbody tr td").eq(1).text();
					console.log(nickName);
					if(data.length == 0) {
						$("#txtAddMember").val("해당 멤버가 존재하지 않습니다.");
						$("#txtAddMember").attr("disabled",true);
					} else if (item.mNickName == nickName) {
						$("#txtAddMember").val("이미 처리가 완료된 회원입니다.");
						$("#txtAddMember").attr("disabled",true);
					} else {
						$("#txtAddMember").val(item.mNickName);		
						$("#btnHidden").val(item.reSeq);
						console.log($("#btnhidden").val());
						$("#btnAddMember").attr("disabled",false);
					}
					
				});
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function addMember() {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/addMember.action",
			data:"reSeq="+$("#btnHidden").val()+"&mEmail="+$("#mEmail").val(),
			dataType:"json",
			success:function(data) {
				//console.log(data);
				if(data == "1") {
					console.log("성공");
					showMember($("#btnHidden").val());
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function stateOff(reSeq) { /* 이거 수정해야됨!!! 부모 못찾...음 */
		$(this).closest('tr').hide();
		/* $.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/stateChange.action",
			data:"reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				//console.log(data);
				if(data == "1") {
					console.log("성공");
					//리스트에서 삭제?!
					$(this).parent("tr");
					
				}
			},
			error:function() {
				alert("실패");
			}
		}) */
	}
	
	function modal() {
		
	}
</script>
</head>
<body>
	<div class="core_top">
		<h2 class="boxBasic">팀 마스터 페이지</h2>
	</div>
	<div id="recruitTbl" class="boxBasic">
		<h4>모집중인 프로젝트</h4>
		<table class="table">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>시작일 ~ 종료일</th>
				<th>인원수</th>
				<th>모집 on/off</th>
				<th>프로젝트</th>
			</tr>
			<c:if test="${tlist.size() eq 0}">
				<tr>
					<td colspan="3">결과가 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${tlist.size() ne 0}">
				<c:forEach items="${tlist}" var="tdto">
				<tr id="btnMember" onclick="showMember(${tdto.reSeq});" style="cursor:pointer;" class="cde">
					<td>${tdto.reSeq}</td>
					<td>${tdto.jSubject}</td>
					<td>${tdto.jStart}~${tdto.jEnd}</td>
					<td><span id="mCount${tdto.reSeq}">${tdto.mCount}</span>/<span id="jCount">${tdto.jCount}</span></td>
					<td class="abc"><input type="button" value="OFF" class="btn-btn" onclick="stateOff(${tdto.reSeq});" /></td>
					<td><input type="button" id="btnProject" value="생성" class="btn" onclick="modal(${tdto.prSeq});"/></td>
					<c:if test="${tdto.pCount==1}">
					<script>
						$("#btnProject").val("이동");
						$("#btnProject").attr("onclick","location.href='${pageContext.request.contextPath}/member/manage.action?prSeq=${tdto.prSeq}';");
					</script>
					</c:if>					
				</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
	<div id="requestTbl" class="boxBasic">
		<h4>새 멤버 요청</h4>
		<div id="searchMember">
			<input type="text" id="mEmail" class="form-control" />
			<input type="button" id="btnSearch" class="btn" value="회원검색" onclick="searchMember();" />
			<input type="hidden" id="btnHidden"/>
		</div>
		<div id="addMember">		
			<input type="text" id="txtAddMember" class="form-control" readonly/>
			<input type="button" id="btnAddMember" class="btn" onclick="addMember();" value="멤버요청"/>
		</div>
		<div></div>
	</div>
	<div id="memberTbl" class="boxBasic">
		<h4>신청자 리스트</h4>
		<table id="memberList" class="table">
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