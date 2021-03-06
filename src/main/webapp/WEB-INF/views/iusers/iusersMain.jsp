<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomProject</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="icon" href="/ibom/resources/images/favicon_83.png"
	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"
	content="/ibom/resources/images/favicon_300.png" />
<!-- fontAwesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/css/dolMainInput.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize.css" />
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
<script>
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
</script>
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var d = window.document;
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "28c3d596-e951-470d-9831-877c2b28ba28"
  });
</script>
<!-- End Channel Plugin -->
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>
<!-- 캘린더 -->
<link href='/ibom/resources/js/calendar/packages/core/main.css' rel='stylesheet' />

<script src='/ibom/resources/js/calendar/packages/core/main.js'></script>
<script src='/ibom/resources/js/calendar/packages/interaction/main.js'></script>
<script src='/ibom/resources/js/calendar/packages/daygrid/main.js'></script>

<script type="text/javascript">
$(function(){
	
	var userId = '${loginIuser.user_id}';
    var srcCalendarEl = document.getElementById('source-calendar');
    var today = new Date();
    var date = new Date(today.getFullYear(), today.getMonth(), today.getDate());
    var srcCalendar = new FullCalendar.Calendar(srcCalendarEl, {
	      plugins: [ 'interaction', 'dayGrid' ],
	      defaultView: 'dayGridMonth',
	      header: {
	          left: 'none',
	          center: 'title',
	          right: 'prev,next today'
	      },
	      editable: false,
	      defaultDate: date,
	      eventClick: function(event) {
	    	  event.jsEvent.preventDefault();
	    	  if(event.event.title == "서비스 완료"){
	    	 location.href='${pageContext.request.contextPath}/iusers/moveAct.do?serviceId=' + event.event.id;
	    	 }else{
	    		alert("서비스 조회는 완료된 건만 조회가 가능합니다.") 
	    	 } 
	    	 
	      },
	      locale: 'ko',
		    	events:function(info, successCallback, failureCallback) {
		    		
		    		 $.ajax({
		    				url : "${pageContext.request.contextPath}/iusers/sCalendar.do",
		    				data : {user_id : userId},
		    				type : "post",
		    				dataType : "json",
		    				success : function(data){
		    					
		    					var jsonStr = JSON.stringify(data);
		    					var json = JSON.parse(jsonStr);
		    					
		    					 var events = [];
		    					 console.log("dd")
		    	   					 for(var i in json.list){
		    	   						if(json.list[i].title == "서비스 완료"){
		    	   							
		    	   							events.push({id:json.list[i].id2 + "," + json.list[i].fmCode,
		    	   								title: json.list[i].title,start: json.list[i].start, color: "#f37233"})
		    	   						}else if(json.list[i].title.trim() == "서비스 취소"){
		    	   							events.push({id:json.list[i].id2 + "," + json.list[i].fmCode,
		    	   								title: json.list[i].title,start: json.list[i].start, color: "#23b9ce"})
		    	   						}else if(json.list[i].title.trim() == "돌보미 배정중"){
		    	   							events.push({id:json.list[i].id2 + "," + json.list[i].fmCode,
		    	   								title: json.list[i].title,start: json.list[i].start, color: "#5bb536"})
		    	   						}else if(json.list[i].title.trim() == "취소 요청"){
		    	   							events.push({id:json.list[i].id2 + "," + json.list[i].fmCode,
		    	   								title: json.list[i].title,start: json.list[i].start, color: "#f40505"})
		    	   						}else if(json.list[i].title.trim() == "돌보미 배정완료"){
		    	   							events.push({id:json.list[i].id2 + "," + json.list[i].fmCode,
		    	   								title: json.list[i].title,start: json.list[i].start, color: "#f8bd0f"})
		    	   						}
		    						 }
		    	   					
		    	   				successCallback(events); 
		    					
		    					},
		    				error : function(jqXHR, textStatus, errorThrown){
		    					console.log("error : "+jqXHR+", "+textStatus+", "+errorThrown);
		    				}
		    				
		    			});
		    		
		    		
		    		
		    	}
		    			});
		    	
		    		 
		srcCalendar.render();
   
  });
</script>
<script type="text/javascript">
$(function(){
	
	
	$("#calendars").click(function(){
	var scrollPosition = $("#listTarget").offset().top;
 		$("html,body").animate({
 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
	}, 1000);
	});
	
	$("#list").click(function(){
		var scrollPosition = $("#selects").offset().top;
	 		$("html,body").animate({
	 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
		}, 1000);
		});
	var searchTarget = "${Y}";
	if(searchTarget != ""){
		var scrollPosition = $("#searchTarget").offset().top;
 		$("html,body").animate({
 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
		}, 0);
	}
	
	
	
	$(".chkAll").click(function(){
		
		if($(".chkAll").prop("checked")) { 
			$(".chk").prop("checked",true);
			} else { 
			$(".chk").prop("checked",false); 
			}
	});
 	
});

function cencleService(event){
	if($("input:checkbox[name=chk]").is(":checked") === false){
		alert("취소요청할 서비스를 선택하여 주세요.");	
		return false;
		
	}else{
		  	  var chkAuthor = $("input[name=chk]:checked").val();
			
			  var trueAndFalseDel = confirm('해당 서비스를 취소 하시겠습니까?');
			  if(trueAndFalseDel != false){
		  
		 
			  var arrayParam = new Array();

			$("input:checkbox[name=chk]:checked").each(function(){
				var check = $(this).val();
				var arrayCheck = check.split("/");
				
				if(arrayCheck[1] == "서비스 완료"){
					alert("완료된 건은 취소가 불가 합니다.")
					$(".chk").prop("checked", false);
					return false;
				}
				
				arrayParam.push(check);

			});
			
		
		$.ajax({
 					url : "${pageContext.request.contextPath}/iusers/cancelService.do",
 					data : { service2_no : arrayParam},
 					traditional : true,
 					type : "post",
 					dataType : "text",
 					success : function(data){
 						
 						if(data == "Y"){
 							alert("취소요청이 완료 되었습니다.")
 							 location.reload();
 						}else{
 							alert("취소요청 실패")
 						}
 						
 					},
 					error :function(jqXHR, textStatus, errorThrown){
 						
 						console.log("error : " + textStatus);
 					}
 					
 				});
			    }else
			    	return false;
				  
	}
}
</script>
<style>
	.fc-button-primary:disabled{
	background: rgb(243, 114, 51);
	border:rgb(243, 114, 51);
	}
	.fc-button {
	background: rgb(243, 114, 51);
	border:rgb(243, 114, 51);
]/.,[MNOBI5RD]awzx 	}
	.fc-button:hover {
	background: #fff;
	color: rgb(243, 114, 51);
	border: rgb(243, 114, 51);
	}
 
  #source-calendar{
    margin-top:20px;
    width: 100%;
    
  }
  #source-calendar td{
  cursor:pointer;
  }
  /* :target{
  border: 2px solid #D4D4D4;
  background-color: #e5eecc;
  transition: all 2s ease-out 5s;
   
  }*/
 
  /* #header{
  background:rgba(235, 235, 235, 0.8);
  width:100%;
  height:50px;
  border-radius:5px;
  } */

  input[type=text]{
  display:inline-block;
  width:100px;
  margin-right:5px;
  margin-top:15px;
  border:none;
  background:white;
  cursor:default;
  }
  .fc-sun {color:#e31b23}
  .fc-sat {color:#007dc3}
  /* **************************************** *
 * JT BOARD LIST40
 * **************************************** */
.jt_board_list40 {/* width: 100%; */table-layout: fixed;padding-top: 5px;position: relative;}
.jt_board_list40:before {content: '';display: block;width: 100%;height: 5px;position: absolute;top: 0;left: 0;background-color: #f07e23;border-radius: 25px;overflow: hidden;}
.jt_board_list40 caption {width: 1px;height: 1px;position: absolute;top: 0;left: 0;font-size: 0;line-height: 0;overflow: hidden;}
.jt_board_list40 tr {width: 100%;}
.jt_board_list40 th {padding: 19px 0 21px;position: relative;font-size: 16px;text-align: center;font-weight: 500;color: #222;vertical-align: middle;border-bottom: 1px solid #ddd;}
.jt_board_list40 th:before {content: '';display: block;width: 1px;height: 12px;position: absolute;top: 50%;left: 0;margin-top: -6px;background: #ddd;}
.jt_board_list40 th:first-child:before {display: none;}
.jt_board_list40 td {padding: 20px 0;font-size: 15px;font-weight: 400;text-align: center;color: #888;vertical-align: middle;border-bottom: 1px solid #ddd;cursor: pointer;-webkit-transition: background 300ms;transition: background 300ms;}
.jt_board_list40 .jt_board_title_wrap {width: auto;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;word-wrap: normal;}
.jt_board_list40 .jt_board_title_wrap * {vertical-align: middle;}
.jt_board_list40 .jt_board_title_wrap a {font-size: 16px;letter-spacing: -0.025em;color: #222;}
.jt_board_list40 .jt_board_new {display: inline-block;width: 16px;height: 16px;margin-right: 3px;margin-top: 2px;position: relative;font-style: normal;line-height: 15px;text-align: center;background: #f07e23;border-radius: 50%;}
.jt_board_list40 .jt_board_new:after {font-family: 'jt_font';content: '\e945';font-size: 12px;color: #fff;}
.jt_board_list40 tr.jt_board_sticky_row td {background: #fef8f4;}
.jt_board_list40 tr.jt_board_sticky_row td a {font-weight: 500;}
html.desktop .jt_board_list40 tr:hover td {background: #f8f8f8;}
html.ie .jt_board_list40 .jt_board_new {line-height: normal;}
html.ie .jt_board_list .jt_board_new:after {position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); -ms-transform: translate(-50%,-50%)}

.jt_board_list .type {width: 130px;}
.jt_board_list .hit {width: 130px;}
.jt_board_list .date {width: 160px;}
.jt_board_list .title {width: auto;}
.jt_board_list td.title {padding: 19px 31px 21px;text-align: left;}

html.ie .jt_board_list_wrap {display: block; position: relative;}
html.ie .jt_board_list_wrap:before {content: '';display: block;width: 100%;height: 5px;position: absolute;top: 0;left: 0;background-color: #f07e23;border-radius: 25px;overflow: hidden;}

  
</style>
</head>
<body>
<c:import url="iusersHeader.jsp" />

<!--  main =================================================================== -->
<main id="main" class="main_container">
	<div id="selects"></div>
    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">서비스내역조회(달력)</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->
            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                <br>
                <p id="actlist" align="right"style=" color:rgb(243, 114, 51); margin-bottom:3px;"><a href="#list" target="_self" id="calendars"><i class="fa fa-list fa5x"></i> 리스트로 보기</a></p>
                <p class="jt_board_list"></p>
    				
			<div style="position:relative; width:100%;">
					<ul style=" display:inline-block; postion:relative; width:100%;">
						<li style="float:left; width:49%; margin-left:5px; margin-top:5px;">
						<p style=" color:rgb(243, 114, 51); font-size:11pt;">* 활동일지 열람은 서비스 완료 후 가능 합니다.</p>
						</li>
					</ul>
					<div style="clear: both;"></div><br /><br />
					<div id='source-calendar'></div>
					<div id="listTarget"></div>
					<div style="width:100%; height:50px; position:relative;"></div>
					
					<!-- 리스트형  -->
					
					<ul style=" display:inline-block; postion:relative; width:100%;">
						<li style="float:left; width:49%; margin-left:5px;"><h5 id="selectAct"style="margin:0;color:rgb(243, 114, 51);">서비스 내역 조회</h5>
						</li>
					<li style="float:right; width:12%; margin-top:8px;">
						 <a href="#calendars" style="float:right;" target="_self" id="list"><i class="fa fa-calendar"></i> 캘린더로 보기</a>
					</li>
					</ul>
					 <form action="${pageContext.request.contextPath}/iusers/applySearch.do" method="post">
					<table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%; ">조회기간</th>
                    <td scope="col" class="type" >
                    <input type="hidden" name="dol_id" value="${loginIuser.user_id}">
                    <input type="hidden" name="currentPage" value="${currentPage}">
                    <div class="input-field col s2" >
                      <i class="material-icons prefix">date_range</i>
                  <input type="date" name="stDate" id="resident_no1" class="validate" style="width:20%;" />
                 &nbsp;                 
                 <strong>~</strong>
                 &nbsp;
                    <i class="material-icons prefix">date_range</i>
                      <input id="resident_no2"name="endDate" type="date" class="validate" style="width:20%;">
                 </div>
                 
                    <p style=" color:rgb(243, 114, 51); font-size:11pt;">※조회기간은 최대 1개월 입니다.</p>
                    </td>
                </tr>
           		 <tr>
                    <th scope="col" class="title" style="width:3%; ">활동일지 작성여부</th>
                    <td scope="col" class="type">
                     <select name=log_category class="jt_selectric search_data" style="width:50%;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    	<option value="돌보미 배정완료">돌보미 배정완료</option>
                    	<option value="돌보미 배정중">돌보미 배정중</option>
                    	<option value="서비스 완료">서비스 완료</option>
                    	<option value="취소 요청">취소 요청</option>
                    	<option value="서비스 취소">서비스 취소</option>
                    </select>
                    </td>
                </tr>
			</thead>
          </table>
          <ul style=" display:inline-block; postion:relative; width:100%; margin-top:5px;">
			<li style="float:left; width:89%; margin-left:5px;">
			  <p style=" color:rgb(243, 114, 51); font-size:10pt;">* 활동일지 열람은 서비스 완료 후 가능 합니다.</p>
			</li>
			<li style="float:right; width:6%; margin-top: 3px;">
			  <input type="submit" value="조회"class="btn waves-effect orange darken-3">  
			</li>
		</ul>
		</form>
		<div style="width:100%; height:50px; position:relative;"></div>
		<div style="width:100%; height:50px; position:relative;"></div>
		<div id="searchTarget"></div>
			 <button class="btn waves-effect orange darken-3"style="float:right; margin-bottom:5px;"onclick="cencleService();">신청취소</button>
		<div class="jt_board_list_wrap">		
        <table class="jt_board_list40">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                	<th style="width:25px;"><label><input type="checkbox"name="chk" class="chkAll"/><span></span></label></th>
                    <th scope="col" class="type">활동일지</th>
                    <th scope="col" class="type">대상아동</th>
                    <th scope="col" class="type">활동일(요일)</th>
                    <th scope="col" class="type">활동시간</th>
                    <th scope="col" class="type">활동수당</th>
                    <th scope="col" class="type">신청상태</th>
                    <th scope="col" class="type">신청자명</th>
                    <th scope="col" class="type">지역</th>
                </tr>
               
            </thead>
            
            <tbody>
            <c:set var="i" value="${0}"/>
            <c:forEach var="s" items="${alist}" varStatus="status">
            	<jsp:useBean id="now" class="java.util.Date" />
				<tr class="js_full_click  jq_click click_a">
					<td class="type"><label><input type="checkbox"name="chk"value="${s.service2_no}/${s.apply_status}" class="chk"/><span></span></label></td>
                    <c:if test="${s.apply_status ne '서비스완료'}">
                    <td class="type">
                    	<a style="color:#23b9ce;">${s.apply_status}</a>
                    	 </td>
                    </c:if>
                    
                     <c:if test="${s.apply_status eq '서비스완료'}" >
                      <td class="type" style="color:rgb(243, 114, 51);">
                    	<a href="${pageContext.request.contextPath}/iusers/moveAct.do?serviceId=${s.service2_no},${s.family_code}">서비스 완료</a>
                      </td>
                    </c:if>
                    <td class="type" id="child-name">
                    <c:out value="${ s.family_name }" />
                    </td>
                    <td class="type">${s.apply_date}(${s.care_day })</td>
                    <td class="type">${s.start_time} ~ ${s.end_time}</td>
                     <td class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${s.total_pay}" /></td>
                    <td class="type">${s.apply_status }</td>
                    <td class="type">${s.transferor }</td>
               		<td class="type">${ s.dolbom_place }</td> 
                </tr>
           </c:forEach>
            </tbody>
        </table><!-- .jt_board_list -->
       
        <div class="jt_pagination" data-font="secondary" id="jt_pagination">
        <a href="${pageContext.request.contextPath }/loginsuccess.do?page=1" class="page_numbers first" page="1">첫 페이지</a>
        <c:if test="${(commonPage.beginPage-commonPage.pageSize)<= 1}">
		<a href="${pageContext.request.contextPath }/loginsuccess.do?page=1" class="page_numbers prev " page="1">이전 페이지</a>
		</c:if>
         <c:if test="${(commonPage.beginPage-commonPage.pageSize) > 1}">
         <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.beginPage-commonPage.pageSize}" class="page_numbers prev " page="1">이전 페이지</a>
		</c:if>
		
	 <c:forEach var="p" begin="${commonPage.beginPage }" end="${commonPage.endPage }">
		<c:if test="${p == commonPage.currentPage }">
				<c:url var="ps" value="${pageContext.request.contextPath }/loginsuccess.do">
				<c:param name="page" value="${p}" />
				</c:url>
			<span class="current page_numbers">${p}</span>
		</c:if>
		<c:if test="${p != commonPage.currentPage}">
			<a class="page_numbers" href="${pageContext.request.contextPath }/loginsuccess.do?page=${p}">${p }</a>
		</c:if>
	</c:forEach>         
        
        <c:if test="${(commonPage.endPage+commonPage.pageSize) > commonPage.maxPage }">
		 <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.maxPage}" class="page_numbers next" page="3">다음 페이지</a>	
		</c:if>
		
	<c:if test="${(commonPage.endPage+commonPage.pageSize) <= commonPage.maxPage }">
		 <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.endPage + commonPage.pageSize}" class="page_numbers next" page="3">다음 페이지</a>
	</c:if>
        <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.maxPage}" class="page_numbers last" page="3">마지막 페이지</a>
    </div>
    </div>
    </div>
    
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../common/footer.jsp" />
</body>
</html>