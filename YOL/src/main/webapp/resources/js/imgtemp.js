/**
 * 이미지 업로드
 */

$(document).ready(function() {
	
	//동적으로 이미지 div 생성
	var num = 1;
	$("#btnImg").click(function() {
		var div = "<div class='portlet ui-resizable ui-droppable ui-widget ui-widget-content ui-helper-clearfix ui-corner-all droptab'>" +
							"<div class='portlet-header ui-widget-header ui-corner-all ui-sortable-handle'>" +
							"<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>" +
							"</div>" +
							
							"<div class='portlet-content'>" +
								"<div class='adImg '>" +
									"<input type='file' class='imgInp' id='imgInp"+num+"'/>" +
										"<div class='imgtemp'>" +
										"<img src='#' alt='img' id='imgtag"+num+"' onclick='imgResize(imgtag"+num+")' />" +
										"</div>" +
								"</div>" +
							"</div>" +
						"</div>";
		$("#sortable").append(div);
		num++;
	});		
});

//이미지 임시 URL
function readURL(input, imgInpNum) {
	//var imgInp = "#imgInp" + imgInpNum; 
	if(input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function (e) {
			var imgtag = "#imgtag" + imgInpNum;
			$(imgtag).attr('src', e.target.result);
		}				
		reader.readAsDataURL(input.files[0]);
	}
}
//불러와서 이미지 출력
$(document).on("change",".imgInp",function() {
	var inputNum = this.id.substring(6);
	console.log(this);
	readURL(this, inputNum);
});

function imgResize(imgId) {
	console.log(imgId.id);
	var btnSize = "<div id='imgResize' style='position:absolute; left:520px; top:500px; visibility:visible; background-color:white;' ><span>너비:</span><input type='text' name='width' style='width:30px;'/><span>높이:</span><input type='text' name='height' style='width:30px;'/><input type='button' value='변경' onclick='sizeSet("+imgId+")'/></div>";
	$("#imgAll").append(btnSize);
	//window.open(imgId);
}

