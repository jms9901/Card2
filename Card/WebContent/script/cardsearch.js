$(document).ready(function() {
		
	$("#gender1").click(function() {
		
		var 변수명 = "남자";
		var box1 = document.getElementById("gender1");
		var box2 = document.getElementById("gender2");
		
		// css 변경
		box1.style.backgroundColor = "#C0DFF5";
		box2.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=gender]").attr("value", 변수명);
		
	})
	
	$("#gender2").click(function() {
		
		var 변수명 = "여자";
		var box1 = document.getElementById("gender1");
		var box2 = document.getElementById("gender2");
		
		box2.style.backgroundColor = "#C0DFF5";
		box1.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=gender]").attr("value", 변수명);
		
	})
	
	$("#age1").click(function() {
		
		var 변수명 = "20대";
		var box1 = document.getElementById("age1");
		var box2 = document.getElementById("age2");
		var box3 = document.getElementById("age3");
		
		box1.style.backgroundColor = "#C0DFF5";
		box2.style.backgroundColor = "white";
		box3.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=age]").attr("value", 변수명);
		
	})
	
	$("#age2").click(function() {
		
		var 변수명 = "30대";
		var box1 = document.getElementById("age1");
		var box2 = document.getElementById("age2");
		var box3 = document.getElementById("age3");
		
		box1.style.backgroundColor = "white";
		box2.style.backgroundColor = "#C0DFF5";
		box3.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=age]").attr("value", 변수명);
		
	})
	
	$("#age3").click(function() {
		
		var 변수명 = "40대 이상";
		var box1 = document.getElementById("age1");
		var box2 = document.getElementById("age2");
		var box3 = document.getElementById("age3");
		
		box1.style.backgroundColor = "white";
		box2.style.backgroundColor = "white";
		box3.style.backgroundColor = "#C0DFF5";
		
		// 값넣기
		$("input[name=age]").attr("value", 변수명);
		
	})
	
	$("#benefit1").click(function() {
		
		var 변수명 = "전체";
		var box1 = document.getElementById("benefit1");
		var box2 = document.getElementById("benefit2");
		var box3 = document.getElementById("benefit3");
		var box4 = document.getElementById("benefit4");
		
		box1.style.backgroundColor = "#C0DFF5";
		box2.style.backgroundColor = "white";
		box3.style.backgroundColor = "white";
		box4.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=benefit]").attr("value", 변수명);
		
	})
	
	$("#benefit2").click(function() {
		
		var 변수명 = "할인";
		var box1 = document.getElementById("benefit1");
		var box2 = document.getElementById("benefit2");
		var box3 = document.getElementById("benefit3");
		var box4 = document.getElementById("benefit4");
		
		box1.style.backgroundColor = "white";
		box2.style.backgroundColor = "#C0DFF5";
		box3.style.backgroundColor = "white";
		box4.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=benefit]").attr("value", 변수명);
		
	})
	
	$("#benefit3").click(function() {
		
		var 변수명 = "포인트";
		var box1 = document.getElementById("benefit1");
		var box2 = document.getElementById("benefit2");
		var box3 = document.getElementById("benefit3");
		var box4 = document.getElementById("benefit4");
		
		box1.style.backgroundColor = "white";
		box2.style.backgroundColor = "white";
		box3.style.backgroundColor = "#C0DFF5";
		box4.style.backgroundColor = "white";
		
		// 값넣기
		$("input[name=benefit]").attr("value", 변수명);
		
	})
	
	$("#benefit4").click(function() {
		
		var 변수명 = "마일리지";
		var box1 = document.getElementById("benefit1");
		var box2 = document.getElementById("benefit2");
		var box3 = document.getElementById("benefit3");
		var box4 = document.getElementById("benefit4");
		
		box1.style.backgroundColor = "white";
		box2.style.backgroundColor = "white";
		box3.style.backgroundColor = "white";
		box4.style.backgroundColor = "#C0DFF5";
		
		// 값넣기
		$("input[name=benefit]").attr("value", 변수명);
		
	})
		
});
