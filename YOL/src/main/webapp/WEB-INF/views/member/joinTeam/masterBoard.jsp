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
		
		$("#mEmail").click(function() {
			if ($("#mEmail").val() != null) {
				//$("#mEmail").val("");
				$("#txtAddMember").val("");
			}
		});
	});
	
	function showMember(reSeq, subhide) {
		console.log(subhide);
		$("#btnSearch").attr("disabled",false);
		$("#mEmail").attr("readonly",false);
		$("#mEmail").val("");
		$("#btnHidden").val(reSeq);
		
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
					var tr = "<tr><td>"+n+"</td><td>"+item.mNickName+"</td><td>"+item.jRegDate+"</td><td>"+item.gradeName+"</td><td><input type='button' value='승인' class='btn' id='btnApprove"+item.jSeq+"' onclick='approve("+item.mSeq+","+item.reSeq+");'> <input type='button' id='btnReject"+item.jSeq+"' value='거절' class='btn' onclick='reject("+item.mSeq+","+item.reSeq+");'> <input type='hidden' id='listHidden"+item.reSeq+"' value='"+item.mNickName+"'></td></tr>"
					$("#memberList tbody").append(tr);
					n++;
	
					if(item.apSeq != '0') {
						//버튼 비활성
						$("#" + "btnApprove" + item.jSeq).attr("disabled",true);
						$("#" + "btnReject" + item.jSeq).attr("disabled",true);
					}
				});
			},
			error:function() {
				alert("실패");
			}			
		});
		
		if(subhide == 1) {
			console.log("subhide:1=true");
			$("#btnSearch").attr("disabled",true);
			$("#mEmail").attr("readonly",true);
			$("#mEmail").val("멤버 구성이 완료되었습니다.");
		}
		
	}
	
	function approve(mSeq, reSeq) {
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/approveMember.action",
			data:"mSeq="+mSeq+"&reSeq="+reSeq,
			dataType:"json",
			success:function(data) {
				console.log("approve"+data);
				var mCount = "#mCount" + reSeq;
				var jCount = "#jCount" + reSeq;
				if(data == 1) {
				var temp = parseInt($(mCount).text()) + 1;
					$(mCount).text(temp);					
					var subhide = "#numHidden" + $("#btnHidden").val();
					console.log($("#mCount").text() == $(jCount).text());
						if ($("#mCount").text() == $(jCount).text()) {
							subhide = "1";
						}
						showMember(reSeq, subhide);
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
					var subhide = "#numHidden" + $("#btnHidden").val();
					showMember(reSeq, subhide);
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function searchMember() { //완료
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/searchMember.action",
			data:"mEmail="+$("#mEmail").val(),
			dataType:"json",
			success:function(data) {
				console.log("searchMember: "+data);
				//$("#mEmail").val("");
				$(data).each(function(index, item) {
					//console.log(nickName);
					if(item.mNickName == "") {
						$("#txtAddMember").val("해당 멤버가 존재하지 않습니다.");
						$("#txtAddMember").attr("disabled",true);
					} else {
						var result = false;
						for(var i=0; i<$('#memberList tbody tr').length; i++) {
							var td = "#memberList tbody tr:eq("+i+") td:eq(1)";
							var nickName = $(td).text();
							console.log(td);
							console.log(nickName);
							if (item.mNickName == nickName) {
								result = true;
								break;
							}
						}						
						if (result == true) {
							$("#txtAddMember").val("이미 처리가 완료된 회원입니다.");
							$("#txtAddMember").attr("disabled",true);				
						} else {
							$("#txtAddMember").val(item.mNickName);		
							console.log($("#btnHidden").val());
							$("#btnAddMember").attr("disabled",false);
						}
					}
				});
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function addMember() { //완료		
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/member/addMember.action",
			data:"reSeq="+$("#btnHidden").val()+"&mEmail="+$("#mEmail").val(),
			dataType:"json",
			success:function(data) {
				//console.log(data);
				if(data == "1") {
					console.log("addMember 성공");
					var subhide = "#numHidden" + $("#btnHidden").val();
					showMember($("#btnHidden").val(), subhide);
				}
			},
			error:function() {
				alert("실패");
			}
		})
	}
	
	function stateOff(reSeq) { //완료
		//console.log($(this).attr("class"));
		var answer = confirm("마감상태로 변경하시겠습니까? (**마감상태 변경시 재변경 불가능**)");
		if (answer) {
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/member/stateChange.action",
				data:"reSeq="+reSeq,
				dataType:"json",
				success:function(data) {
					//console.log(data);
					if(data == "1") {
						console.log("성공");
						location.href="${pageContext.request.contextPath}/member/teamMaster.action?mSeq="+${loginDTO.mSeq};
					}
				},
				error:function() {
					alert("실패");
				}
			})
		}
	}
	
	function modal(reSeq) {
		 $("#myModal").modal("show");
	}
</script>

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
					<td colspan="6" style="height:50px;">결과가 없습니다. 프로젝트 팀원을 모집해보세요. <a href="${pageContext.request.contextPath}/member/communityBoard.action" style="font-weight:bold; font-size:1.2em;"><span class="label label-danger">바로가기</span></a></td>
				</tr>
			</c:if>
			<c:if test="${tlist.size() ne 0}">
				<c:forEach items="${tlist}" var="tdto">
				<tr id="btnMember${tdto.reSeq}" style="cursor:pointer;" class="memberTr">
					<td>${tdto.reSeq}</td>
					<td>${tdto.jSubject}</td>
					<td>${tdto.jStart}~${tdto.jEnd}</td>
					<td>
						<span id="mCount${tdto.reSeq}">${tdto.mCount}</span>/<span id="jCount">${tdto.jCount}</span>
						<input type="hidden" id="numHidden${tdto.reSeq}" class="subhide" value="0"/>
					</td>
					<c:if test="${tdto.mCount == tdto.jCount}">
					<script>
						$("#numHidden${tdto.reSeq}").val("1");
						console.log($("#numHidden${tdto.reSeq}").val());
					</script>
					</c:if>
					<td class="abc"><input type="button" value="OFF" class="btn-btn state-off" onclick="stateOff(${tdto.reSeq});" /></td>
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
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
         		<form method="POST" action="/web/member/creationok.action">
	            <div class="modal-body">
	            <div id="tabs">
				  <ul>
				    <li><a href="#tabs-1">STEP : 1</a></li>
				    <li><a href="#tabs-2">STEP : 2</a></li>
				  </ul>
				  
				  <div id="tabs-1">
				    <table id="step1tbl">
						<tr>
							<th colspan="4">
								프로젝트명
							</th>
						</tr>
						<tr>
							<td colspan="4">
								<input type="radio" class="rdo" name="ptype" value="private" checked onclick="m1();"/>개인
								<input type="radio" class="rdo" name="ptype" value="share" onclick="m1();" />공용
									<select name="jCount" id="pnum" style="display:none;">
										<option value="1">인원수를 선택하세요.</option>
										<option value="2">2인용</option>
										<option value="3">3인용</option>
										<option value="4">4인용	</option>
									</select>
							</td>				
						</tr>
						<script>
						function m1(){
							$("#pnum").val("1");

							if($(":input:radio[name=ptype]:checked").val()=="share"){
								$("#pnum option:eq(0)").replaceWith("<option value=\"\" disabled='disabled'>인원수를 선택하세요.</option>");
								$("#pnum").show();
								
							}else{
								$("#pnum option:eq(0)").replaceWith("<option value=\"1\">인원수를 선택하세요.</option>");
								$("#pnum").val("1");
								$("#pnum").hide();
							}
								
						}
						</script>
						
						<tr>
							<td colspan="4">
								<input type="text" class="textbox" name="prName" placeholder="프로젝트명을 입력하세요." required />
							</td>
						</tr>
						<tr>
							<th style="text-align: left;" colspan="4">
								프로젝트 설명
							</th>					
						</tr>
						<tr>
							<td colspan="4"><textarea name="jContent" style="width:98%; height:100px;"></textarea></td>
						</tr>
						<tr>
							<th colspan="4" style="text-align: left">기간 설정</th>
						</tr>
						<tr>
							<th>시작일</th>
							<td><input type="date" name="jStart" /></td>
							<th>종료일</th>
							<td><input type="date" name="jEnd" /></td>
						</tr>
					</table>
				  </div>
				  
				  
				  <div id="tabs-2">
				   	<table id="step2tbl">
						<tr><th colspan="2">브라우저 타이틀</th></tr>
						<tr><td colspan="2"><input type="text" class="textbox" name="siteName" placeholder="사이트명을 입력하세요. 브라우저 상단에 나타납니다." minlength="4" maxlength="15" required /></td></tr>
						<tr><td colspan="2"><span>*최초 설정 이후에도 편집모드에서 수정하실 수 있습니다.</span></td></tr>
						<tr><th colspan="2">사이트 URL</th></tr>
						<tr><td colspan="2"><input type="text" class="textbox" name="prURL" placeholder="원하는 주소를 입력하세요." required /></td></tr>
						<tr><td colspan="2"><span>*url은 최초 설정 이후 1회 변경이 가능하니 신중하게 입력해 주세요</span></td></tr>
						<tr>
							<th style="width:100px;">공개여부</th>		
							<td><select name="opSeq" id=""><option value="0">비공개</option><option value="1">공개</option></select></td>
						</tr>
						<tr>
							<th>teSeq</th>
							<td><select name="teSeq" id=""><option value="1">포트폴리오</option><option value="2">다른템플릿</option></select></td>
						</tr>
					</table>
				   	
				  </div>
				</div>
	             <script>
				  $( function() {
				    $( "#tabs" ).tabs({
				      collapsible: true
				    });
				  } );
				  </script>
	            </div>
	            
	            <input type="hidden" name="mSeq" value="${loginDTO.mSeq}" />
	            
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                <button type="submit" id="action" class="btn btn-primary">Next</button>
	            </div>
	            <script>
	            
	            /* 
		            $('#action').click(function() {
		            	alert("으앙");
		                var selected = $("#tabs").tabs("option", "selected");
		                $("#tabs").tabs("option", "selected", selected + 1);
		            });
	             */
	            </script>
	            
	            
	            </form>
	        </div> <!-- /.modal-content -->
	    </div> <!-- /.modal-dialog -->
	</div> <!-- /.modal -->
	
	
<c:set var="loop" value="1" />
<script>	
/* $("#btn_cancleMember").hide(); */
var n = 1;
<c:forEach items="${tlist}" var="tdto">	
	var name = "#btnMember" + ${tdto.reSeq};
	$(name).attr("onclick","showMember(${tdto.reSeq},$('#numHidden${tdto.reSeq}').val());");
	<c:if test="${tlist.size() eq n}">
		<c:set var="loop" value="0" />
	</c:if>
	n++;
</c:forEach>
</script>