<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(document).ready(function() {
	$('#btn5').click(function() {
		
		var data = "pbSeq=${bdto.pbSeq}&mSeq=${loginDTO.mSeq}&pbcomment=" + $('#Pbcomment').val();
		
		$.ajax({
			type: "post",
			url : "${pageContext.request.contextPath}/member/pbcommentadd.action",
			data : data,
			dataType: "json",
			success : function(data) {
				if (data.result == 1) {
					var tr = "<tr><td>${loginDTO.mNickName}</td><td>"+ $("#Pbcomment").val()+"</td><td>" + data.pbcRegdate 	+"<c:if test='${pbcdto.mSeq == loginDTO.mSeq}'><span class='glyphicon glyphicon-remove' onclick='cdel(${pbcdto.pbcSeq})'></span></c:if>"+"</td></tr>";
					
					$("#tblComment tbody").append(tr);
					$("#Pbcomment").val("");
				} else if (result == 0) {
					alert("추가 실패");
				}
			}
			
		});
	});
	
	$('#del').click(function() {
				var result = confirm("정말 삭제하시겠습니까?");
			if(result) {
				if(${bdto.mSeq} == ${loginDTO.mSeq}) {
					location.href='${pageContext.request.contextPath}/member/pbdelok.action?pbSeq=${bdto.pbSeq}&prSeq=${pdto.prSeq }';
				} else {
					alert("권한이 없습니다.");
				}
			}
	});

	$('#edit').click(function(){
			if(${bdto.mSeq} == ${loginDTO.mSeq}) {
					location.href='${pageContext.request.contextPath}/member/pbedit.action?pbSeq=${bdto.pbSeq}&prSeq=${pdto.prSeq }';
			} else {
					alert("권한이 없습니다.");
			}
		});
	
	
});
	
	function cdel(pbcSeq) {
		if(confirm("삭제하시겠습니까?")) {
			
			$.ajax ({
				type: "get",
				url: "${pageContext.request.contextPath}/member/pbcommentdel.action",
				data: "pbcSeq="+pbcSeq,
				dataType: "json",
				success: function(result) {
					if(result == 1) {
						$("#trSeq"+pbcSeq).remove();
					}
				}
			})
		
		}
	}
</script>

<%@ include file="/WEB-INF/views/member/siteManage/manage.jsp" %>

	<hr />
		<blockquote>
		<h1>프로젝트 게시판 </h1>
		</blockquote>	
			
			<table id="tbl3" class="table table-striped">
				<tr>
					<th>번호</th>
					<td>${bdto.pbSeq }</td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td> 
						<c:if test="${bdto.nsSeq == 1 }"> 공지</c:if>
						<c:if test="${bdto.nsSeq == 0 }"> 일반</c:if>
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${bdto.mNickName }</td>
				</tr>
				<tr>
					<th>작성 날짜</th>
					<td>${bdto.pbregdate }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${bdto.pbSubject }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${bdto.pbContent }</td>
				</tr>
				<tr>
					<th>태그허용</th>
					<td>
						<c:if test="${bdto.pbtag == 'y' }"> 허용</c:if>
						<c:if test="${bdto.pbtag == 'n' }"> 비허용</c:if>
					</td>
				</tr>
			</table>	
			<input type="hidden"  name="mSeq" value= "${loginDTO.mSeq}"/>
			<input type="hidden" name="prSeq" value= "${pdto.prSeq }"/>
			
		<div id="btns3">
			<input type="button" value="글쓰기" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/member/pbadd.action?prSeq=${pdto.prSeq}'" />
			<input type="button" value="수정하기"  class="btn btn-default" id="edit"/>
			<input type="button" value="삭제하기"  class="btn btn-primary" id="del"/>
			<input type="button" value="돌아가기"   class="btn btn-default" onclick="history.back();" />
		</div>
		
		
		<hr />
		
	
			
			<table id="tblComment" class="table">
				<tbody>
					<c:forEach items="${pbclist}" var="pbcdto">
						<tr id="trSeq${pbcdto.pbcSeq}">
							<td>${pbcdto.mNickName}</td>
							<td>${pbcdto.pbcomment}</td>
							<td>
								${pbcdto.pbcRegdate}
								<c:if test="${pbcdto.mSeq == loginDTO.mSeq}">
									<span class="glyphicon glyphicon-remove" onclick="cdel(${pbcdto.pbcSeq})"></span>
								</c:if>
							</td>
						</tr>
						<tr>
						
						</tr>
					</c:forEach>
				</tbody>
			</table>

			
				<div  class="col-lg-6">
		 	<form id="form1" class="form-inline">
    				<div class="input-group">
      					<textarea  name = "Pbcomment" id="Pbcomment"class="form-control" placeholder="내용을 입력하세요."></textarea>
      					<span class="input-group-btn">
        					<button id="btn5"class="btn btn-default" type="button">등록!</button>
      					</span>
    				</div>
			</form> 
  				</div>



</body>
</html>