<%@page import="java.text.DecimalFormat"%>
<%@page import="DTO.CardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../Main_css/section.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>
<body>
<%@include file="header.jsp" %>

<% DecimalFormat df = new DecimalFormat("###,### 원"); %>

<%-- <%

	CardDao dao = CardDao.getinstance();

	ArrayList<CardDto> list = new ArrayList<>();
	
	list = dao.cardlist();

%> --%>

<div id="section">

	<div id="section_1">
		<div id="s_item1">
			<div id="slide">
				<ul>
					<li><a href="#"><img alt="" src="/Card/images/banner1.jpeg" width="900px" height="380px"></a></li>
					<li><a href="#"><img alt="" src="/Card/images/banner2.jpeg" width="900px" height="380px"></a></li>
					<li><a href="#"><img alt="" src="/Card/images/banner3.png" width="900px" height="380px"></a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="section_2">
	
		<div id="s_item2">
			<h3>CREDIT CARD</h3>
			<span id="span_detail">PEANUTS BEST 상품들을 만나보세요.</span>
		</div>
		
		<div id="s_item3">

				<div class="slide">
					<ul class="panel">
						<li>
							<img alt="" src="/Card/images/현대카드.png" width="90">
							1. 카드사
							2. 카드 이름
						</li>
						<li><img alt="" src="/Card/images/현대카드.png" width="90"></li>
						<li><img alt="" src="/Card/images/현대카드.png" width="90"></li>
					</ul>
					<ul class="dot">
						<li class="on">슬라이드 버튼1번</li>
						<li>슬라이드 버튼2번</li>
						<li>슬라이드 버튼3번</li>
					</ul>
					<div class="prev"><img alt="" src="/Card/images/화살표.png" width="30" style="transform: scaleX(-1);"></div>
					<div class="next"><img alt="" src="/Card/images/화살표.png" width="30"></div>
				</div>

			</div>
	</div>
	
	<%-- <div id="section_3">
		
		<div id="s_item4">
			<div id="s_item5">
				<h3>CREDIT CARD LIST</h3>
				<span id="span_detail2">PEANUTS에서 추천하는 CREDIT CARD LIST</span>
			</div>
			
			<ul class="ul1">
			
			<%
				for(int i = 0; i < list.size(); i++) {
					
					CardDto dto = list.get(i);
					
			%>
			
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/card_upload/<%=dto.getImages() %>" width="200"></a>
					
					<div id="list_info">
						<p class="company"><a href="<%=dto.getBank_link() %>"><%=dto.getCard_company() %></a></p>
						<p class="name"><a href="<%=dto.getBank_link() %>"><%=dto.getCard_name() %></a></p>
						<p class="fee"><a href="<%=dto.getBank_link() %>"><%=dto.getMembership_fee() %></a></p>
					</div>
				
				</li>
				
			<%
			}
			%>
				
			</ul>
			
		</div>
		
	</div> --%>
	
	<div id="div_line"></div>
	
	<div id="section_4">
		
		<div id="s_item6">
			<div id="s_item7">
				<h3>CHECK CARD LIST</h3>
				<span id="span_detail3">PEANUTS에서 추천하는 CHECK CARD LIST</span>
			</div>
			
			<ul class="ul2">
			
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="name"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="name"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="name"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="name"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="name"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="name"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
				<li class="list_li">
				
					<a href="#"><img alt="" src="/Card/images/현대카드.png" width="150"></a>
					
					<div id="list_info">
						<span class="company"><a href="#">현대카드</a></span>
						<span class="names"><a href="#">블랙카드</a></span>
					</div>
				
				</li>
				
			</ul>
			
		</div>
		
	</div>
	
</div>
<%@include file="footer.jsp" %>

<script type="text/javascript"> /* section 페이드인아웃 스크립트 */

	$('#slide>ul>li').hide();
	$('#slide>ul>li:first-child').show();
	
	setInterval(function(){ $('#slide>ul>li:first-child').fadeOut()
		.next().fadeIn().end(1000)
		.appendTo('#slide>ul'); },3000);


</script>

<script type="text/javascript"> /* section 슬라이드 스크립트 */

$(document).ready(function() {
	  slide();
	});


	// 슬라이드 
	function slide() {
	  var wid = 0;
	  var now_num = 0;
	  var slide_length = 0;
	  var auto = null;
	  var $dotli = $('.dot>li');
	  var $panel = $('.panel');
	  var $panelLi = $panel.children('li');

	  // 변수 초기화
	  function init() {
	    wid = $('.slide').width();
	    now_num = $('.dot>li.on').index();
	    slide_length = $dotli.length;
	  }

	  // 이벤트 묶음
	  function slideEvent() {

	    // 슬라이드 하단 dot버튼 클릭했을때
	    $dotli.click(function() {
	      now_num = $(this).index();
	      slideMove();
	    });

	    // 이후 버튼 클릭했을때
	    $('.next').click(function() {
	      nextChkPlay();
	    });

	    // 이전 버튼 클릭했을때
	    $('.prev').click(function() {
	      prevChkPlay();
	    });

	    // 오토플레이
	    autoPlay();

	    // 오토플레이 멈춤
	    autoPlayStop();

	    // 오토플레이 재시작
	    autoPlayRestart();

	    // 화면크기 재설정 되었을때
	    resize();
	  }

	  // 자동실행 함수
	  function autoPlay() {
	    auto = setInterval(function() {
	      nextChkPlay();
	    }, 3000);
	  }

	  // 자동실행 멈춤
	  function autoPlayStop() {
	    $panelLi.mouseenter(function() {
	      clearInterval(auto);
	    });
	  }


	  // 자동실행 멈췄다가 재실행
	  function autoPlayRestart() {
	    $panelLi.mouseleave(function() {
	      auto = setInterval(function() {
	        nextChkPlay();
	      }, 3000);
	    });
	  }

	  // 이전 버튼 클릭시 조건 검사후 슬라이드 무브
	  function prevChkPlay() {
	    if (now_num == 0) {
	      now_num = slide_length - 1;
	    } else {
	      now_num--;
	    }
	    slideMove();
	  }

	  // 이후 버튼 클릭시 조건 검사후 슬라이드 무브
	  function nextChkPlay() {
	    if (now_num == slide_length - 1) {
	      now_num = 0;
	    } else {
	      now_num++;
	    }
	    slideMove();
	  }

	  // 슬라이드 무브
	  function slideMove() {
	    $panel.stop().animate({
	      'margin-left': -wid * now_num
	    });
	    $dotli.removeClass('on');
	    $dotli.eq(now_num).addClass('on');
	  }

	  // 화면크기 조정시 화면 재설정
	  function resize() {
	    $(window).resize(function() {
	      init();
	      $panel.css({
	        'margin-left': -wid * now_num
	      });
	    });
	  }
	  init();
	  slideEvent();
	}

</script>

</body>
</html>