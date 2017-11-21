<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<style>

	body {
		
	}

#tblQList {
	border: 1px solid gray;
	border-collapse: collapse;
	width: 800px;
	margin: 0px auto;
	margin-top: 30px;
}

#tblQList tr {
	padding: 10px;
}

#tblQList th, #tblQList td {
	border: 1px solid gray;
	padding: 5px;
	text-align: center;
}



#tblQList th:nth-child(1) {
	width: 40px;
}

#tblQList th:nth-child(2) {
	width: 80px;
}

#tblQList th:nth-child(3) {
	width: 360px;
}

#tblQList th:nth-child(4) {
	width: 80px;
}

#tblQList th:nth-child(5) {
	width: 180px;
}

#tblQList th:nth-child(6) {
	width: 60px;
}

#tblQList th {
	background-color: cornflowerblue;
	color: white;
}


#btns {
	width: 800px;
	text-align: right;
	margin-top: 30px;
	margin-bottom: 30px;
	margin: 30px auto;
}

#search {
	border: 1px solid black; 
	width: 700px;
	padding: 5px;
	margin: 0px auto;
	margin-top: 40px;
}

#search #sel {
	width: 150px;
	height: 30px;
}

#sel option {
	text-align: center;
	margin: 0px auto;
}

#search #word {
	margin-left: 10px;
	margin-right: 10px;
	width: 400px;
	height: 30px;
}

#search #btn {
	width: 100px;
	height: 30px;
}

.btn {
	background-color: cornflowerblue;
	color:white;
	border-radius:0;
}

#pagebar {
	margin: 0px auto;
	text-align:center;
	padding-top: 10px;
	padding-bottom: 10px;
	
}

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

#box {
	margin: 0px auto;
	margin-top: 50px;
}

</style>

<script>

	function search() {
		
		var category = $("#sel").val();
		var word = $("#word").val();
		
		$.ajax({
			type: "get",
			url: "${pageContext.request.contextPath}/question/search.action",
			data: "category=" + category + "&word=" + word,
			dataType: "json",
			success: function(data) {
				
				$("#tblQList tbody").html("");//검색 초기화
				
				
				if($(data).size() > 0) {
					
				$(data).each(function(index,list) {
				
					var text = "<tr>";
					
					text += "<td>" + list.questionseq + "</td>";
					text += "<td>" + list.qcategory + "</td>";
					text += "<td><a href='${pageContext.request.contextPath}/question/view.action?questionseq=" + list.questionseq + "'>" + list.qtitle + "</a><span> ( " + list.qcommentcount + " ) </span></td>";
					text += "<td>" + list.mnickname + "</td>";
					text += "<td>" + list.qtime + "</td>";
					text += "<td>" + list.qhits + "</td>";
					text += "</tr>";
					
					$("#tblQList tbody").append(text);
				});
					
				} else {
					var text = "<tr>";
					text += "<td colspan='6'>" + "일치하는 내용이 없습니다" +"</td>";
					text += "</tr>";
					
					$("#tblQList tbody").append(text);
				}
				
			}
		});
		
		
		
	};

</script>

	<!-- List 주업무 -->

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
			<thead>
			<tr>
				<th>번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.questionseq}</td>
					<td>${dto.qcategory}</td>
					<td><a
						href="${pageContext.request.contextPath}/question/view.action?questionseq=${dto.questionseq}">
							${dto.qtitle} </a> <span>( ${dto.qcommentcount} )</span></td>
					<td>${dto.mnickname}</td>
					<td>${dto.qtime}</td>
					<td>${dto.qhits}</td>
				</tr>
			</c:forEach>
				<c:if test="${list.size() == 0}">
					<tr>
						<td colspan="6"> 현재 게시물이 존재하지 않습니다 </td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>
	
	<div id="btns">
		<input type="button" value="글 쓰기"
			onclick="location.href='${pageContext.request.contextPath}/question/add.action'" class="btn">
	</div>

		<div id="pagebar">${pagebar}</div>

		<div id="search">
			<select id="sel">
				<option value="0">검색 항목</option>
				<option value="qcategory">카테고리</option>
				<option value="qtitle">제목</option>
				<option value="mnickname">글쓴이</option>
			</select> 
			<input type="text" id="word" name="word"> 
			<input type="button" value="검색하기" id="btn" class="btn" onclick="search();">
		</div>
		

