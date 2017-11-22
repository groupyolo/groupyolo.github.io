<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>

	#tbl tr td{
		text-align: center;
		vertical-align: middle;
	}
	#tbl tr:NTH-CHILD(7) td{
		text-align: left;
	}
	#tbl tr:NTH-CHILD(8) td{
		text-align: left;
	}

	#login{
		background-color: green;	
		color:white;
	}
	#loginBtn{
		cursor:pointer;
	}
	
	#box{
		margin:100px auto;
		width:500px;
	}
	
</style>
	
	<c:if test="${clear=='yes'}">
	<div style="margin:30px auto; color:red; font-size:1.2em; width:800px; text-align:center;">
		아이디가 없거나, 비밀번호가 틀리거나, 또는 인증되지 않은 이메일입니다. 
	</div>
	</c:if>
	
	<form method="post" action="${pageContext.request.contextPath}/admin/loginOk.action" id="apiLogin">
	<input type="hidden" name="adminID" id="adminID" >
	<input type="hidden" name="password" id="password">
	</form>
	
	<!-- 비번 잘못 입력시 다시 페이지 불러오고, 아이디는 유지시키고 어디에다 비번 ㅊ틀렷다고 보여주기 -->
	
	<div id="box">
	<form method="post" action="${pageContext.request.contextPath}/admin/loginOk.action">
	<table id="tbl" class="table">
	<tr>
		<td>
			<h2>관리자 로그인</h2>
		</td>
	</tr>
	<tr>
		<td>
		<input type="email"	name="adminID" id="adminID" class="form-control" placeholder="이메일을 입력하세요." required>
		</td>
	</tr>
	<tr>
		<td>
		<input type="password" name="password" id="password" class="form-control" placeholder="비밀번호를 입력하세요" required >
		</td>

	</tr>
	<tr>
		<td>
			<input type="submit" id="login" value="로그인" class="form-control" >
		</td>
	</tr>

	</table>
	</form>
	</div>


