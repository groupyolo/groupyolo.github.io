<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

	<style>
	.faqTitle{
		cursor:pointer;
	}	
	.table .faqContent td{
		padding-left:30px;
		
	}	
	
	.table{
		margin-top:20px;
	}
	/* .table .faqTitle td, .table .faqContent{
		padding-left:50px;
	} */
	.table .faqSubject {
		font-size:1.2em;
		font-weight: bold;
		
	}
	.table .faqTitle td:hover{
		color:red;
	}
	
 	a:hover{
		color:navy;
	} 
	#sub{
		width:100%;
		/* margin-top:20px; */
	
		
	}
	#sub li{
		float:left;
		width:20%;
		list-style: none;
		font-weight:bold;
		text-align: center;
		font-size:1.3em;
		margin-bottom:50px;
	}
	#searchImage{
		background-image: url("${pageContext.request.contextPath }/images/search.png");
		/* width:1000px;*/
		height:400px;
		background-size:cover;
		background-repeat:no-repeat;
		opacity: .7;
		vertical-align: middle;
		padding-top:200px;
		
	}
	#searchBox{
		margin:0px auto;
	}
	#searchBox td:first-child {
		width:900px;
	
	}
	#searchBox td:nth-child(2) {
		width:100px;
	
	}
	#find{
		color:white;
		text-align: center;
		font-weight: bold;
	}
	
	#find a{
		text-decoration: none;
		color:lime;
	}
	#find a:hover{
		color:navy;
	}
	#box{
		margin:30px auto;
		width:1000px;
		
	}
	#tables{
		margin-top:30px;
	}
	

	</style>
	
	<div id="searchImage">

		<!-- 검색어 어떠헥 너었더라?? -->
		<form method="get" action="${pageContext.request.contextPath }/main/faqview.action" >
			<table id="searchBox">
			<tr>
			<td><input type="text" placeholder="궁금하신 질문을 검색해보세요." name="search" id="search" class="form-control" required></td>
			<td><input type="submit" class="form-control" value="검색하기"></td>
			</tr>
			</table>
			
		</form>
		<div id ="find" style="padding:30px;">찾으시는 내용이 없으세요?  <a href="${pageContext.request.contextPath }/main/qnaview.action">문의 게시판 가기</a></div>
	</div>
	<div id="box">
	<ul id="sub">
	<c:forEach items="${categoryList }" var="cDTO">
		<li><a href="#category${cDTO.FAQCategoryseq }">${cDTO.FAQcategory }</a></li>
		
	</c:forEach>
	</ul>
	<!-- 카테고리 -->

	
		<!-- faq -->
	<div id="tables">	
	<c:forEach items="${categoryList }" var="cDTO" varStatus="sta">
	
	<table class="table" id="category${cDTO.FAQCategoryseq }">
		
		<thead>
			<tr>
				<th class="faqSubject">
					${cDTO.FAQcategory}
				</th>
			</tr>
		</thead>
	
	
		<tbody>
		
			<c:forEach items="${faqList }" var="dto">
			<c:if test="${dto.FAQCategoryseq==cDTO.FAQCategoryseq && dto.openseq==1 }">
			<tr class="faqTitle" check="true">
				<td>
					Q. ${dto.title }			
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
	</c:forEach>
	</div>
	</div>
	
	
		
	<script>
	
	$(".faqContent").hide();
	
	$(".faqTitle").click(function(){
		if($(this).attr("check")=="true"){
			$(this).next().show();
			$(this).attr("check","false");
		}else{
			$(this).next().hide();
			$(this).attr("check","true");
		}
		
	});
	
	$("table").each(function(index,item){
		
		if($(item).find("td").length==0){
			$(item).remove();
		}
		
	});
	
	</script>






