<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="mysites">
	<div id="sitelist">
		<p><span style="font-weight: bold;">${loginDTO.mNickName }</span>님의 사이트 정보</p>
		<hr />
		<table class="table .table-condensed">
			<tr>
				<th>이름</th><th>주소</th><th>시작일</th><th>게시 상태</th>
			</tr>
			<c:forEach items="${vCreationList }" var="list">
				
				<c:if test="${list.jCount == 1}">
				<tr>
					<td>${list.prName}</td>
					<td><a href="/web/member/manage.action?prSeq=${list.prSeq}">${list.prURL}</a></td>
					<td>${list.jStart.substring(0,10)}</td>		
					<td>${list.activeState}</td>
				</tr>					
				</c:if>
			
			</c:forEach>
		</table>	
	</div>
	
	<hr />
	
	<div id="grouplist">
		<p>팀프로젝트 사이트</p>
		<hr />
		<table class="table .table-condensed">
			<tr>
				<th>이름</th><th>주소</th><th>기간</th><th>게시 상태</th>
			</tr>
			
			<c:forEach items="${vCreationList }" var="list">
				
				<c:if test="${list.jCount > 1}">
				<tr>
					<td>${list.prName}</td>
					<td>${list.prURL}</td>
					<td>${list.jStart.substring(0,10)}~${list.jEnd.substring(0,10)}</td>
					<td>${list.activeState}</td>		
				</tr>					
				</c:if>
			
			</c:forEach>

		</table>	
	</div>
	
	<div id="btncreate">
	<a data-toggle="modal" class="btn btn-danger"  data-target="#myModal">추가하기</a>
 	</div>
 	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	        	
	        	
         		<form method="POST" action="/web/member/creationok.action">
	        	
	            <div class="modal-body">
	            
	            <div id="tabs">
				  <ul>
				    <li><a href="#tabs-1">STEP : 1</a></li>
				    <li><a href="#tabs-2">STEP : 2</a></li>
				  </ul>
				  <div id="tabs-1">
				  
				    <table id="step1tbl">
						<tr>
							<th colspan="4">
								프로젝트명
							</th>
						</tr>
						<tr>
							<td colspan="4">
								<input type="radio" class="rdo" name="ptype" value="private" checked onclick="m1();"/>개인
								<input type="radio" class="rdo" name="ptype" value="share" onclick="m1();" />공용
									<select name="jCount" id="pnum" style="display:none;">
										<option value="1">인원수를 선택하세요.</option>
										<option value="2">2인용</option>
										<option value="3">3인용</option>
										<option value="4">4인용	</option>
									</select>
							</td>				
						</tr>
						<script>
						function m1(){
							$("#pnum").val("1");

							if($(":input:radio[name=ptype]:checked").val()=="share"){
								$("#pnum option:eq(0)").replaceWith("<option value=\"\" disabled='disabled'>인원수를 선택하세요.</option>");
								$("#pnum").show();
								
							}else{
								$("#pnum option:eq(0)").replaceWith("<option value=\"1\">인원수를 선택하세요.</option>");
								$("#pnum").val("1");
								$("#pnum").hide();
							}
								
						}
						
						</script>
						
						<tr>
							<td colspan="4">
								<input type="text" class="textbox" name="prName" placeholder="프로젝트명을 입력하세요." required />
							</td>
						</tr>
						<tr>
							<th style="text-align: left;" colspan="4">
								프로젝트 설명
							</th>					
						</tr>
						<tr>
							<td colspan="4"><textarea name="jContent" style="width:98%; height:100px;"></textarea></td>
						</tr>
						<tr>
							<th colspan="4" style="text-align: left">기간 설정</th>
						</tr>
						<tr>
							<th>시작일</th>
							<td><input type="date" name="jStart" /></td>
							<th>종료일</th>
							<td><input type="date" name="jEnd" /></td>
						</tr>
					</table>
						    
				    
				  </div>
				  <div id="tabs-2">
				  
				   	<table id="step2tbl">
						<tr>
							<th colspan="2">브라우저 타이틀</th>
						</tr>
						<tr>
							<td colspan="2"><input type="text" class="textbox" name="siteName" placeholder="사이트명을 입력하세요. 브라우저 상단에 나타납니다." minlength="4" maxlength="15" required /></td>
						</tr>
						<tr>
							<td colspan="2"><span>*최초 설정 이후에도 편집모드에서 수정하실 수 있습니다.</span></td>
						</tr>
						<tr>
							<th colspan="2">사이트 URL</th>
						</tr>
						<tr>
							<!-- ajax로 중복검사해야함 -->
							<td colspan="2"><input type="text" class="textbox" name="prURL" placeholder="원하는 주소를 입력하세요." required /></td>
						</tr>
						<tr>
							<td colspan="2"><span>*url은 최초 설정 이후 1회 변경이 가능하니 신중하게 입력해 주세요</span></td>
						</tr>
						<tr>
							<th style="width:100px;">공개여부</th>		
							<td><select name="opSeq" id=""><option value="0">비공개</option><option value="1">공개</option></select></td>
						</tr>
						<tr>
							<th>teSeq</th>
							<td><select name="teSeq" id=""><option value="1">포트폴리오</option><option value="2">다른템플릿</option></select></td>
						</tr>
					</table>
				   	
				  </div>

				</div>
	                        
	            
	             <script>
				  $( function() {
				    $( "#tabs" ).tabs({
				      collapsible: true
				    });
				  } );
				  </script>
	            
	            </div>
	            <input type="hidden" name="mSeq" value="${loginDTO.mSeq }" />
	            
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                <button type="submit" id="action" class="btn btn-primary">Next</button>
	            </div>
	            <script>
	            
	            /* 
		            $('#action').click(function() {
		            	alert("으앙");
		                var selected = $("#tabs").tabs("option", "selected");
		                $("#tabs").tabs("option", "selected", selected + 1);
		            });
	             */
	            </script>
	            
	            
	            </form>
	        </div> <!-- /.modal-content -->
	    </div> <!-- /.modal-dialog -->
	</div> <!-- /.modal -->

	<hr />	

	<div id="otherswork" style="display:none;">
		<p>다른사람들의 프로젝트 둘러보기</p>
		<div id="worklist">
		<div class="othersp">
		
		</div>
		<div class="othersp">
		
		</div>
		<div class="othersp rdsp">
		
		</div>
		<div class="othersp">
		
		</div>
		<div class="othersp">
		
		</div>
		<div class="othersp rdsp">
		
		</div>
		<div class="othersp">
		
		</div>
		<div class="othersp">
		
		</div>
		<div class="othersp rdsp">
		
		</div>
		
		</div>
	
		<hr />
		<div style="padding:30px; width:100%; height: 400; border: 1px dashed blue;">
			자주 묻는 질문 
		</div>
		
	
	</div>
	

</div>
