<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<style>
	.faqTitle{
		cursor:pointer;
	}	
	
	.table{
		margin-top:300px;
	}
	</style>
	
	<div>
	검색하기 
	
	
	</div>
	<div>찾으시는 내용이 없으세요? <a href="${pageContext.request.contextPath }/main/qnaView.action">문의 게시판 가기</a></div>
	
	<c:forEach items="${categoryList }" var="cDTO">
		<a href="#category${cDTO.FAQCategoryseq }">${cDTO.FAQcategory }</a>
	
	</c:forEach>
	
	
	<!-- 카테고리 -->
	<c:forEach items="${categoryList }" var="cDTO">
	<table class="table" id="category${cDTO.FAQCategoryseq }">
		<thead>
		<tr>
			<th>
				${cDTO.FAQcategory }
			</th>
		</tr>
		</thead>
		<tbody>
		<!-- faq -->
		
		<c:forEach items="${faqList }" var="dto">
		<c:if test="${dto.FAQCategoryseq==cDTO.FAQCategoryseq && dto.openseq==1 }">
		<tr class="faqTitle">
			<td >
				${dto.title }			
			</td>
		</tr>
		<tr class="faqContent">
			<td>
				${dto.fcontent }
			</td>
		</tr>
		</c:if>
		</c:forEach>
		</tbody>
	</table>
	
	<script>
	var check=true;
	$(".faqContent").hide();
	
	$(".faqTitle").click(function(){
		if(check){
			$(this).next().show();
			check=!check;
		}else{
			$(this).next().hide();
			check=!check;
		}
		
	});
	
	</script>
	
	</c:forEach>
		






