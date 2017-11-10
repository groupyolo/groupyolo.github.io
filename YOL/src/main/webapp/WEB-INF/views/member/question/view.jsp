<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>
	
	#tblList { border: 1px solid gray; border-collapse:collapse; width:800px;}
	#tblList th, #tblList td { border: 1px solid gray; padding: 5px; }
	#tblList td { text-align:center; }
	
	#tblList th:nth-child(1) { width: 40px; }
	#tblList th:nth-child(2) { width: 80px; }
	#tblList th:nth-child(3) { width: 360px; }
	#tblList th:nth-child(4) { width: 80px; }
	#tblList th:nth-child(5) { width: 180px; }
	#tblList th:nth-child(6) { width: 60px; }
	#tblList th { background-color: #eee; }
	#btns { width:800px; text-align:right; margin-bottom: 30px; }
	
	#tblComment, #tblCList { border: 1px solid gray; width: 800px; border-collapse:collapse;}
	#tblComment td, #tblCList td { border: 1px solid gray; padding: 5px; text-align:center; }
	#tblComment td:nth-child(1) { width: 100px; }
	#tblComment td:nth-child(2) { width: 600px; }
	#tblComment td:nth-child(3) { width: 100px; }
	
	#tblCList td:nth-child(1) { width: 100px; }
	#tblCList td:nth-child(2) { width: 600px; }
	#tblCList td:nth-child(3) { width: 100px; }
	
</style>
<script>

	function del(seq) {		
		
		var questionseq = ${dto.questionseq};
		
		if (confirm("삭제하시겠습니까?")) {
			
		
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/question/delComment.action",
				data: "seq=" + seq + "&questionseq=" + questionseq,
				dataType: "json",
				success: function(result) {
					if(result == 1) {
					
						alert("삭제되었습니다.");
						

						  $('#tr' +seq).remove();  
					
					} else {
						alert("삭제가 불가합니다.");
					}
				}
			});
		}
	};


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
		
		var questionseq = ${dto.questionseq};
		var qcomment = $("#qcomment").val();
		var mSeq = ${mSeq};
		
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/question/addComment.action",
			data: "questionseq=" + questionseq + "&qcomment=" + qcomment + "&mSeq=" + mSeq,
			dataType: "json",
			success : function(result) {
				
				if(result == 1) {
					/* 아래에 데이터 생성 추가해줄거 */
					
					var tr = "<tr>" +
					"<td>" + "${mNickName}" + "</td>" +
					"<td>" + qcomment + "</td>" +
					"<td>" + NowTime + 
					"<span style='float:right;cursor:pointer;' onclick='del(${com.qcommentseq});' title=' 댓글을 삭제합니다.''>[&times;]</span>" + "</td>" +
					"</tr>";
					
					$("#tblCList tbody").append(tr);
					
					$("#qcomment").val("");
				} else {
					alert("댓글 작성 실패")
				}
			}
			
		});//ajax
		
	};
	
	
	
	function checkEdit() {
		
		var name = "${dto.mnickname}";
		var mname = "${mNickName}";
		
		if(name == mname) {
		
		location.href='${pageContext.request.contextPath}/question/edit.action?questionseq=${dto.questionseq}';
		} else {
			alert("작성자가 아닙니다.");
		}
	}//
	
	function checkDel() {
		
		var name = "${dto.mnickname}";
		var mname = "${mNickName}";
		
		if(name == mname) {
			
			location.href='${pageContext.request.contextPath}/question/del.action?questionseq=${dto.questionseq}';
			
		} else {
			alert("작성자가 아닙니다.");
		}
		
	}//

</script>

	<!-- view 주업무 -->
	
		<table id="tblList">
			<tr>
				<th>번호</th>
				<td>${dto.questionseq}</td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td>${dto.qcategory}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${dto.qtitle}</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>${dto.mnickname}</td>
			</tr>
			<tr>
				<th>날짜</th>
				<td>${dto.qtime}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${dto.qhits}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${dto.qcontent}</td>
			</tr>			
		</table>
		<div id="btns">
			<input type="button"  value="글 수정" onclick="checkEdit();">
			<input type="button"  value="글 삭제" onclick="checkDel();">
			<input type="button"  value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/question/list.action'">
		</div>
		
		<h4 style="font-variant: small-caps;">Comments Write</h4>
		<hr style="margin: 10px 0px;">
			
			
		<!-- 댓글 쓰기 -->	
		<div id="cbox" >
			<table id="tblComment">
				<tr>
					<td>
					</td>
					<td>
						<textarea id="qcomment" name="qcomment"  style="width: 580px; height:100px;"></textarea>
					</td>
					<td>
						<input type="button" value="댓글 작성" onclick="addComment();">
					</td>
				</tr>
			</table>
		
		</div>
		
		
		<!-- 읽기 -->
			
		<h4 style="font-variant: small-caps;">Comments</h4>
		<hr style="margin: 10px 0px;">
		<div id="cbox">
			<table id="tblCList">
				<tbody>
				<c:forEach items="${clist}" var="com">
				<tr id="tr${com.qcommentseq}">
					<td>${com.mnickname}</td>
					<td>${com.qcomment}</td>
					<td>${com.qcommenttime}
					<span style="float:right;cursor:pointer;" onclick="del(${com.qcommentseq});" title=" 댓글을 삭제합니다.">[&times;]</span>
					</td>
				</tr>

				</c:forEach>
				</tbody>
			</table>
		</div>		

