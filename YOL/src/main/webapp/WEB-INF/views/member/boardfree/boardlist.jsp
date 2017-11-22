<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<script>
	
		document.title="자유게시판";
		
		function fsearch() {
			
			var category = $("#fblistsel").val();
			var word = $("#word").val();
			
			$.ajax({
				type: "get",
				url: "${pageContext.request.contextPath}/community/freeboard/search.action",
				data: "category=" + category + "&word=" + word,
				dataType: "json",
				success: function(data) {
					console.log("dㅇㅇㅇ");		

					$("#tblfreeboard tbody").html("");//검색 초기화
					
					
					if($(data).size() > 0) {
						console.log($(data).size());
						console.log($(data).length);
						$(data).each(function(index,list) {
						
							var time="";
							if (list.gap = 0){
								time = list.fbTime.substring(10,19);
							}else if(list.gap = 1){
								time = list.fbTime.substring(0,10);
							}
							
							
							var text = "<tr>";
							
							text += "<td>" + list.fbSeq + "</td>";
							text += "<td><a href='${pageContext.request.contextPath}/community/freeboard/boardview.action?fbSeq=" + list.fbSeq +"'><span style='font-weight:bold; padding-right:5px;'>[" + list.fbCategory+"]</span>" + list.fbName+ "</a></td>";  
							text += "<td>" +list.mNickName+"</td>";
							text += "<td title='" + list.fbTime.substring(0,19) +"'>";
							text += time;
							text += "</td>";
							text += "<td>" + list.fbVCount + "</td>";
							text += "</tr>";
							
							$("#tblfreeboard tbody").append(text);
						});
						
					} else {
						var text = "<tr>";
						text += "<td colspan='5'>" + "일치하는 내용이 없습니다" +"</td>";
						text += "</tr>";
						
						$("#tblfreeboard tbody").append(text);
					}
					
				}
			});
			
			
			
		};

		
		
		
	</script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jointeam.css">
	
	
	<div id="fboardwrapper">
	<div class="core_top">
	<h2 class="boxBasic">자유게시판</h2>
	</div>
	<table id="tblfreeboard" class="table table-hover" >
		<thead>
		<tr>
			<th>번호</th><th>제목</th><th>글쓴이</th><th>날짜</th><th>조회수</th>
		</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${fblist}" var="list">
		<tr>
			<td>${list.fbSeq}</td><td><a href="${pageContext.request.contextPath}/community/freeboard/boardview.action?fbSeq=${list.fbSeq }"><span style="font-weight:bold; padding-right:5px;">[${list.fbCategory}]</span>${list.fbName}</a></td><td>${list.mNickName }</td>
			
			<td title="${list.fbTime.substring(0,19)}">
			<c:if test="${list.gap eq 0 }">
			${list.fbTime.substring(10,19) }
			</c:if>
			<c:if test="${list.gap ge 1 }">
			${list.fbTime.substring(0,10) }
			</c:if>			
			</td>
			<td>${list.fbVCount }</td>
		</tr>		
		</c:forEach>
		</tbody>	
	</table>
	<div id ="fbtns">
		<input type="button" value="글쓰기" class="btn" onclick="location.href='${pageContext.request.contextPath}/community/freeboard/boardadd.action';" />	
	</div>
	<div id="search">
		<select id="fblistsel">
			<option value="serall">전체</option>
			<option value="fbCategory">카테고리</option>
			<option value="fbName">제목</option>
			<option value="fbMain">내용</option>
			<option value="mNickName">글쓴이</option>
		</select> 
		<input type="text" id="word" name="word"> 
		<input type="button" class="btn" value="검색하기" id="btn" onclick="fsearch();">
	</div>
	<div id="pagebar">${pagebar}</div>

	
	
	</div>