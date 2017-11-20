<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script>

</script>

<style>

	.conBox1 {
		width:100%;
		height: 800px;
		background: linear-gradient(to bottom, #070000, #4c0001, #070000);
	}

	.conText {
		width: 100%;
		margin: 0px auto;
		padding-top: 100px;
		text-align: center;
	}
	
	.conText span {
		color: white;
		font-size: 4em;
	}
	
	.tblCon {
		margin: 0px auto;
		margin-top: 50px;
	}
	
	.tblCon tr {
		padding: 30px;
		color: black;
		font-size: 1.3em;
	}
	
	.tblCon tr:nth-child(1) input {
		width: 300px;
		height: 50px;
		padding: 30px;
		margin: 20px;
		
	}
	.tblCon tr:nth-child(2) input {
		width: 650px;
		height: 50px;
		padding: 30px;
		margin: 20px;
		
	}
	
	.tblCon tr:nth-child(3) textarea {
		width: 650px;
		height: 200px;
		padding: 30px;
		margin: 20px;
	}

</style>

<!-- contact us 1 -->

	<div class="conBox1">
	
		
		<div class="conText">
			<span>Contact Us</span>
			<table class="tblCon">
				<tr>
					<td><input type="text" value="name" id="name" name="name" onfocus="this.value=''"></td>
					<td><input type="text" value="email" id="email" name="email" onfocus="this.value=''"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="text" id="subject" name="subject" value="subject" onfocus="this.value=''"></td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="message" id="message" value="message" onfocus="this.value=''">message</textarea></td>
				</tr>
			</table>
		</div>
	
	</div>

