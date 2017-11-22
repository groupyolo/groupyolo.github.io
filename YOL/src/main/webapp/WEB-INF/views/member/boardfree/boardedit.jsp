<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="//cdn.ckeditor.com/4.7.3/basic/ckeditor.js"></script>

	<div id="fboardadd">
		<h4>주제에 맞는 글을 자유롭게 작성하세요.</h4>
		<form method="POST" action="${pageContext.request.contextPath}/community/freeboard/boardeditok.action" >
			<div id="tblfboardadd">
				<div class="boardpolicy">
					<p><span>게시판 이용수칙 : </span>글을 쓰실 때에는 예의를 꼭 지켜주세요. 욕설, 비방 등의 글은 무통보 삭제됩니다.</p>
				</div>	
				<div>
					<span>말머리</span>
					<select id="fbCatSeq" name="fbCatSeq" >
						<option value="1">잡담</option>
						<option value="2">게임</option>
						<option value="3">스포츠</option>
						<option value="4">후기</option>
						<option value="5">토론</option>
						<option value="6">기타</option>
					</select>
					<script>
						$("#fbCatSeq").val(${vdto.fbCatSeq});
					</script>
					<span>제목</span>
					<input type="text" name="fbName" value="${vdto.fbName}" placeholder="글 제목을 입력하세요"  style="width:700px;" required/>
				</div>
				<div>
					<textarea name="fbMain" id="fbMaineditor">
						${vdto.fbMain}
					</textarea>
					<script>
						$("#selectBox option:eq(1)").attr("selected", "selected");
						CKEDITOR.replace( "fbMain", {
						     height: 450	
						});
					   
					</script>
				</div>
			</div>
			<input type="hidden" name="fbSeq" value="${vdto.fbSeq}" />
			<input type="hidden" name="mSeq" value="${loginDTO.mSeq}" />
			<div id="fboardaddbtn" class="btncolor">
				<input type="button" class="btn" value="뒤로가기" onclick="history.back();" />
				<input type="submit" class="btn" value="저장하기"/>
			</div>		
		</form>
	</div>
	