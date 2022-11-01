function addCheck(){
	if(frm.id.value.length == 0){
		alert("교과목 코드가 입력되지 않았습니다.");
		frm.id.focus();
		return false;
	}
	else if(frm.name.value.length == 0){
		alert("고목명이 입력되지 않았습ㄴ키다.");
		frm.name.focus();
		return false;
	}
	else if(frm.lecturer.value == 0){
		alert("담당강사가 입력되지 않았습ㄴ키다.");
		frm.lecturer.focus();
		return false;
	}
	else if(frm.week[0].checked == false && frm.week[1].checked == false && frm.week[3].checked == false && frm.week[4].checked == false){
		alert("요일이 입력되지 않았습니다.");
		frm.week.focus();
		return false;
	}
	else if(frm.start_hour.value.length == 0){
		alert("종료 시간이 입력되지 않았습니다.");
		frm.end_hour.focus();
		return false;
	}
	else{
		alert("교과목 등록이 완료되었습니다!");
		document.frm.submit();
		return true;
	}
	
	function modify(){
		alert("교과목 수정이 완료되었습니다!");
		document.frm.submit();
		return true;
	}
	function search(){
		window.location="list.jsp";
	}
	function res(){
		alert("교과목 수정이 취소되었습니다.");
		document.frm.reset();
	}
}