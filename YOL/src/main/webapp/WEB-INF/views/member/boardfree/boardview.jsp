<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#cbox { width:100%; }
	#tblComment, #tblCList { border: 1px solid gray; width: 800px; border-collapse:collapse;}
	#tblComment td, #tblCList td { border: 1px solid gray; padding: 5px; text-align:center; }
	#tblComment td:nth-child(1) { width: 700px; }
	#tblComment td:nth-child(2) { width: 100px; }
	
	#tblCList td:nth-child(1) { width: 100px; }
	#tblCList td:nth-child(2) { width: 600px; }
	#tblCList td:nth-child(3) { width: 100px; }
</style>
<script>
	function del(fbSeq) {
		if(confirm("삭제하시겠습니까?") == true) {
			location.href='${pageContext.request.contextPath}/community/freeboard/boarddel.action?fbSeq=${vdto.fbSeq }';
		}
	}
	
	function addComment() {
		
		var Now = new Date();
		var NowTime = Now.getFullYear();

		NowTime += '-' + (Now.getMonth()+1);
		if( Now.getDate() < 10) { NowTime += '-' + 0 + Now.getDate(); }
		if( Now.getDate() > 9) { NowTime += '-' + Now.getDate(); }
		NowTime += ' ' + Now.getHours();
		NowTime += ':' + Now.getMinutes();
		if( Now.getSeconds() < 10) { NowTime += ':' + 0 + Now.getSeconds(); }
		if( Now.getSeconds() > 9 ) { NowTime += ':' + Now.getSeconds(); }
		
		var fbSeq = ${vdto.fbSeq};
		var fbComA = $("#fbComA").val();
		var mSeq = ${loginDTO.mSeq};
		
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/community/freeboard/addComment.action",
			data: "fbSeq=" + fbSeq + "&fbComA=" + fbComA + "&mSeq=" + mSeq,
			dataType: "json",
			success : function(result) {				
				if(result == 1) {
					/* 아래에 데이터 생성 추가해줄거 */					
					var tr = "<tr>" +
					"<td>" + '${loginDTO.mNickName}' + "</td>" +
					"<td>" + fbComA + "</td>" +
					"<td>" + NowTime + 
					"<span style='float:right;cursor:pointer;' onclick='delCom(${cdto.fbComSeq});' title=' 댓글을 삭제합니다.''>[&times;]</span>" + "</td>" +
					"</tr>";
					
					$("#tblCList tbody").append(tr);					
					$("#fbComA").val("");
					
				} else {
					alert("댓글 작성 실패")
				}
			}
			
		});//ajax
		
	};
	
	function delCom(fbComSeq) {		
		if (confirm("삭제하시겠습니까?")) {		
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/community/freeboard/delComment.action",
				data: "fbComSeq=" + fbComSeq,
				dataType: "json",
				success: function(result) {
					if(result == 1) {					
						alert("삭제되었습니다.");
						$('#tr' +fbComSeq).remove();  
					} else {
						alert("삭제가 불가합니다.");
					}
				}
			});
		}
	};
	
</script>
	<div id="tblboardview">
		<h2>자유게시판</h2>
		<div>
			<p><span>제목</span>${vdto.fbName }<span>${vdto.fbTime.substring(0, 19)}</span></p>
		</div>	
		<div>
			<p><span>작성자 : ${vdto.mNickName}</span><span>조회수 : ${vdto.fbVCount}</span><span>댓글수 : ${clist.size()}</span></p>
		</div>
		<div>
			<p>${vdto.fbMain}</p>
		</div>
	</div>
	<div id="fboardbtns">
		<input type="button" value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardlist.action'" />
		<c:if test="${loginDTO.mSeq==vdto.mSeq }">
		<input type="button" value="삭제하기" onclick="del(${vdto.fbSeq});" />
		<input type="button" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardedit.action?fbSeq=${vdto.fbSeq }';" />
		</c:if>			
	</div>
	
	<!-- 댓글 쓰기 -->	
		<div id="cbox" >
		<h4 style="font-variant: small-caps;">Comments Write</h4>
		<hr style="margin: 10px 0px;">
			<table id="tblComment">
				<tr>
					<td>
						<textarea id="fbComA" name="fbComA" style="width: 680px; height:100px;"></textarea>
					</td>
					<td>
						<input type="button" value="댓글 작성" onclick="addComment();">
					</td>
				</tr>
			</table>
		
		</div>
		
		
		<!-- 읽기 -->
			
		<div id="cbox">
		<h4 style="font-variant: small-caps;">Comments</h4>
		<hr style="margin: 10px 0px;">
			<table id="tblCList">
				<tbody>
				<c:forEach items="${clist}" var="cdto">
				<tr id="tr${cdto.fbComSeq}">
					<td>${cdto.mNickName}</td>
					<td>${cdto.fbComA}</td>
					<td>${cdto.fbComTime}
					<c:if test="${cdto.mNickName==loginDTO.mNickName}">
					<span style="float:right; cursor:pointer;" onclick="delCom(${cdto.fbComSeq});" title=" 댓글을 삭제합니다.">[&times;]</span>
					</c:if>
					</td>
				</tr>
				</c:forEach>
				<c:if test="${clist.size() == 0}">
					<tr>
						<td colspan="3"> 댓글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
				</tbody>
			</table>
		</div>
	