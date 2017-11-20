<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>
	
	body {
		
	}
	
	#box {
		padding-top: 30px;
	}
	
	 #box * {
		margin: 0px auto;
	} 
	
	#cbox {
		margin-left: 100px;
	}
	
	#tblQList { border: 1px solid gray; border-collapse:collapse; width:800px;}
	#tblQList th, #tblQList td { border: 1px solid gray; padding: 5px; text-align:center; }
	#tblQList td { text-align:center; }
	
	#tblQList th:nth-child(1) { width: 60px;}
	#tblQList th:nth-child(2) { width: 300px; }
	#tblQList th:nth-child(3) { width: 70px; }
	#tblQList th:nth-child(4) { width: 80px; }
	#tblQList th:nth-child(5) { width: 180px; }
	#tblQList th:nth-child(6) { width: 60px; }
	#tblQList th { background-color: #eee; }
	
	#qtitle {
		height: 50px;
		text-align: left;
	}
	
	#qcontent {
		height: 150px;
		text-align: left;
	}
	
	#btns { width:800px; text-align:right; margin-bottom: 30px; margin-top: 20px; }
	
	#tblComment, #tblCList { border: 1px solid gray; width: 800px; border-collapse:collapse;}
	#tblComment td, #tblCList td { border: 1px solid gray; padding: 5px; text-align:center; }
	#tblComment td:nth-child(1) { width: 700px; }
	#tblComment td:nth-child(2) { width: 100px; }
	
	#tblCList td:nth-child(1) { width: 100px; }
	#tblCList td:nth-child(2) { width: 600px; }
	#tblCList td:nth-child(3) { width: 100px; }
	
	#all {
		background-color: cornflowerblue;
		color: white;
	}

	blockquote footer {
		color: white;
	}
	#topBox {		
		padding: 40px;
	}
	
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
	
	<div id="all">
		<div id="topBox">
			<blockquote>
			<h2>질문 게시판</h2>
			<footer>서로 소통하고 질문하는 커뮤니티 공간입니다.</footer>
			
			</blockquote>
		</div>
	</div>
	
	<div id="box">
		<table id="tblQList">
			<tr>
				<th>번호</th>
				<td>${dto.questionseq}</td>
				<th>카테고리</th>
				<td>${dto.qcategory}</td>
				<th>조회수</th>
				<td>${dto.qhits}</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>${dto.mnickname}</td>
				<th>날짜</th>
				<td colspan="3">${dto.qtime}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="5" id="qtitle">${dto.qtitle}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="5" id="qcontent">${dto.qcontent}</td>
			</tr>			
		</table>
		<div id="btns">
			<input type="button"  value="글 수정" onclick="checkEdit();">
			<input type="button"  value="글 삭제" onclick="checkDel();">
			<input type="button"  value="돌아가기" onclick="location.href='${pageContext.request.contextPath}/question/list.action'">
		</div>
		
	</div>
			
			
		<!-- 댓글 쓰기 -->	
		<div id="cbox" >
		<h4 style="font-variant: small-caps;">Comments Write</h4>
		<hr style="margin: 10px 0px;">
			<table id="tblComment">
				<tr>
					<td>
						<textarea id="qcomment" name="qcomment"  style="width: 680px; height:100px;"></textarea>
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
				<c:forEach items="${clist}" var="com">
				<tr id="tr${com.qcommentseq}">
					<td>${com.mnickname}</td>
					<td>${com.qcomment}</td>
					<td>${com.qcommenttime}
					<span style="float:right; cursor:pointer;" onclick="del(${com.qcommentseq});" title=" 댓글을 삭제합니다.">[&times;]</span>
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
