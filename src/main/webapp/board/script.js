/**
 * 
 */
function writeSave(){
	if(document.writeForm.writer.value=""){
		alert("작성자를 입력하십시요.");
		document.writeForm.writer.focus()
		return false;
	}
	if(document.writeForm.subject.value=""){
		alert("작성자를 입력하십시요.");
		document.writeForm.subject.focus()
		return false;
	}
	if(document.writeForm.content.value=""){
		alert("작성자를 입력하십시요.");
		document.writeForm.content.focus()
		return false;
	}
	if(document.writeForm.pass.value=""){
		alert("작성자를 입력하십시요.");
		document.writeForm.pass.focus()
		return false;
	}
	
}