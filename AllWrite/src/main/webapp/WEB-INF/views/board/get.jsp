<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta charset="UTF-8">
  <title>JavaScript Rich Text Editor | webdevtrick.com</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css">
  <link rel="stylesheet" href="../resources/style.css">



</head>
  <body onload="enableEditMode()">
	 <form action="/board/modify" method="POST">
		<div>
			<label>Bno</label> 
			<input name='bno' value="${board.bno}" />
		</div>
		
		<div>
			<label>이름</label> 
			<input name='bname' value="${board.bname}" />
		</div>

		<div>
			<label>비밀번호</label> 
			<input name='bpassword' value="${board.bpassword}" />
		</div>
		
		<div>
			<label>Text area</label> 
			<textarea name='bmemo'> ${board.bmemo} </textarea>
		</div>
		<div>
	  		<button class="saveBtn" type="submit">Save</button>   
	  		<button class="deleteBtn" type="submit">delete</button>   

	    </div>
	</form>
   <button class="modifyBtn" type="submit" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">modify</button> 

  <div class="test">
    <button onclick="Edit('bold')" title="bold"><i class="fa fa-bold"></i></button>
    <button onclick="Edit('italic')" title="italic"><i class="fa fa-italic"></i></button>
    <button onclick="Edit('underline')" title="underline"><i class="fa fa-underline"></i></button>
    <button onclick="Edit('strikeThrough')" title="strikeThrough"><i class="fa fa-strikethrough"></i></button>
    <button onclick="Edit('justifyLeft')" title="Align Left"><i class="fa fa-align-left"></i></button>
    <button onclick="Edit('justifyCenter')" title="Align Center"><i class="fa fa-align-center"></i></button>
    <button onclick="Edit('justifyFull')" title="justify"><i class="fa fa-align-justify"></i></button>
    <button onclick="Edit('cut')" title="cut"><i class="fa fa-cut"></i></button>
    <button onclick="Edit('copy')" title="Copy"><i class="fa fa-copy"></i></button>
    <button onclick="Edit('indent')" title="text-indent"><i class="fa fa-indent"></i></button>
    <button onclick="Edit('outdent')" title="text outdent"><i class="fa fa-outdent"></i></button>
    <button onclick="Edit('subscript')" title="subscript"><i class="fa fa-subscript"></i></button>
    <button onclick="Edit('superscript')" title="subscript"><i class="fa fa-superscript"></i></button>
    <button onclick="Edit('undo')" title="undo"><i class="fa fa-undo"></i></button>
    <button onclick="Edit('redo')" title="redo"><i class="fa fa-redo"></i></button>
    <button onclick="Edit('insertUnorderedList')" title="unordered list"><i class="fa fa-list-ul"></i></button>
    <button onclick="Edit('insertOrderedList')" title="ordered list"><i class="fa fa-list-ol"></i></button>
    <button onclick="Edit('insertParagraph')"><i class="fa fa-paragraph"></i></button>
    <select onchange="execVal('formatBlock',this.value)">
        <option value="H1">H1</option>
        <option value="H2">H2</option>
        <option value="H3">H3</option>
        <option value="H4">H4</option>
        <option value="H5">H5</option>
        <option value="H6">H6</option>
      </select>
    <br>
    <button onclick="Edit('insertHorizontalRule')" title="insert Horizontal Rule">insert Horizontal Rule</button>
    <button onclick="Edit('createLink',prompt('Enter a URL,http://'))"><i class="fa fa-link"></i></button>
    <button onclick="Edit('unlink')"><i class="fa fa-unlink"></i></button>
    <select onchange="execVal('fontName',this.value)">
        <option value="Arial">Arial</option>
        <option value="Comic Sans MS">Comic Sans MS</option>
        <option value="Courier">Courier</option>
        <option value="Georgia">Georgia</option>
        <option value="Tahoma">Tahoma</option>
        <option value="Times New Roman">Times New Roman</option>
        <option value="Verdana">Verdana</option>
      </select>
    <select onchange="execVal('fontSize',this.value)" title="font size">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>l
  
<!--  <form action="/board/register"  method="post" target="richTextField"> -->

  <span>
  <iframe id="editText" name="richTextField"></iframe>
  </span>
<!--   </form> -->
    
   
</body>
 
</html>



<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">

function enableEditMode() {
  richTextField.document.designMode = "on";
}
function Edit(command) {
  richTextField.document.execCommand(command, false, null);
}
function execVal(command, value) {
  richTextField.document.execCommand(command, false, value);
}



 $(document).ready(function(){

	 var editBody = $('#editText').contents().find('body');
	 	$('.saveBtn').on('mouseover', function(){
				//var	bmemoTemp = $('#editText').contents().find('body').html(); 		 				
				//var bmemo = $('textarea').html(bmemoTemp);
				//console.log("bmemo의 값이 뭘까?:" + bmemo);
 		 	if(editBody != null) {
		 		 extract();
		 	} 
		 	
 		 	
 		 	$('.saveBtn').click(function(e){ 
 		 			
 					var	bmemoTemp = $('#editText').contents().find('body').html(); 		 				
 					var bmemo = $('textarea').html(bmemoTemp);
 		 	})
 		 	
 		 	
/*  		 	$('.saveBtn').click(function(e){
 		 		
 				function ajaxTest(){	
 					var jsonStr ={
 							bno: '<c:out value="${board.bno}"/>',
 							bname:'<c:out value="${board.bname}"/>', 
 							bpassword: '<c:out value="${board.bpassword}"/>', 
 							bmemo: $('#editText').contents().find('body').html()}; 	
 					
 			        $.ajax({
 			            url: '/uploadAjax',
 			            contentType: 'application/json',
 			            type: 'post',
 			            data: JSON.stringify(jsonStr),
 			            success: function (data) {
 			              console.log("성공");
 			            },
 			            error: function(){
 			            	alert('error');
 			            }
 			          }); 	 			
 			 		}		 				
 			 	
 		 	}) */
 					 			 		
 	
 		 	
 		 	})
 		 		 	

		function extract(){
			var textA = $('#editText').contents().find('body');
			var textB = textA.html();
			console.log("텍스트 나오나: ", textB);				
		} 	
		

	 	
	 	var formObj = $('form');
		$(".deleteBtn").click(function(e){
			e.preventDefault();
			console.log("삭제되라")
			formObj.attr('action', '/board/remove').submit();
		})

	 	
	 	
	 	
	 	
 }) 
	


 
</script>


</body>
</html>