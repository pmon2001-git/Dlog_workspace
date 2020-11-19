<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Dlog</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/images/DlogLogo-title.png">
    <!-- Custom Stylesheet -->
    <link href="resources/css/osageuStyle.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div class="outer" style="margin: auto; width: 1390px;">
        <div id="main-wrapper" style="float: left;">

            <!--**********************************
                Nav header start
            ***********************************-->
            <div class="nav-header">
                <div class="brand-logo">
                    <a href="#">
                        <b class="logo-abbr"><img src="resources/images/DlogLogo-text-short.png" alt="" width="19px"></b>
                        <span class="logo-compact"><img src="resources/images/DlogLogo-text.png" alt="" width="87"></span>
                        <span class="brand-title">
                            <img src="resources/images/DlogLogo-text.png" alt="" width="87px">
                        </span>
                    </a>
                </div>
            </div>
            <!--**********************************
                Nav header end
            ***********************************-->

            <!--**********************************
                Header start
            ***********************************-->
            <div class="header">    
                <div class="header-content clearfix">
                    
                    <div class="nav-control">
                        <div class="hamburger">
                            <span class="toggle-icon"><i class="icon-menu"></i></span>
                        </div>
                    </div>
                    <div class="header-left">
                        <div class="input-group icons">
                            <div class="input-group-prepend">
                                <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                            </div>
                            <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                            <div class="drop-down   d-md-none">
                                <form action="#">
                                    <input type="text" class="form-control" placeholder="Search">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="header-right">
                        <ul class="clearfix">
                            <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                    <i class="mdi mdi-account-multiple-outline"></i>
                                    <span class="badge gradient-7 badge-pill badge-primary">3</span>
                                </a>
                                <div class="drop-down animated fadeIn dropdown-menu">
                                    <div class="dropdown-content-heading d-flex justify-content-between">
                                        <span class="">3 New Messages</span>  
                                        
                                    </div>
                                    <div class="dropdown-content-body">
                                        <ul>
                                            <li class="notification-unread">
                                                <a href="javascript:void()">
                                                    <img class="float-left mr-3 avatar-img" src="resources/images/avatar/1.jpg" alt="">
                                                    <div class="notification-content">
                                                        <div class="notification-heading">Saiful Islam</div>
                                                        <div class="notification-timestamp">08 Hours ago</div>
                                                        <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-unread">
                                                <a href="javascript:void()">
                                                    <img class="float-left mr-3 avatar-img" src="resources/images/avatar/2.jpg" alt="">
                                                    <div class="notification-content">
                                                        <div class="notification-heading">Adam Smith</div>
                                                        <div class="notification-timestamp">08 Hours ago</div>
                                                        <div class="notification-text">Can you do me a favour?</div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void()">
                                                    <img class="float-left mr-3 avatar-img" src="resources/images/avatar/3.jpg" alt="">
                                                    <div class="notification-content">
                                                        <div class="notification-heading">Barak Obama</div>
                                                        <div class="notification-timestamp">08 Hours ago</div>
                                                        <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void()">
                                                    <img class="float-left mr-3 avatar-img" src="resources/images/avatar/4.jpg" alt="">
                                                    <div class="notification-content">
                                                        <div class="notification-heading">Hilari Clinton</div>
                                                        <div class="notification-timestamp">08 Hours ago</div>
                                                        <div class="notification-text">Hello</div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                        
                                    </div>
                                </div>
                            </li>
                            <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                    <i class="mdi mdi-bell-outline"></i>
                                    <span class="badge badge-pill gradient-2 badge-primary">3</span>
                                </a>
                                <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                    <div class="dropdown-content-heading d-flex justify-content-between">
                                        <span class="">2 New Notifications</span>  
                                        
                                    </div>
                                    <div class="dropdown-content-body">
                                        <ul>
                                            <li>
                                                <a href="javascript:void()">
                                                    <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                    <div class="notification-content">
                                                        <h6 class="notification-heading">Events near you</h6>
                                                        <span class="notification-text">Within next 5 days</span> 
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void()">
                                                    <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                    <div class="notification-content">
                                                        <h6 class="notification-heading">Event Started</h6>
                                                        <span class="notification-text">One hour ago</span> 
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void()">
                                                    <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                    <div class="notification-content">
                                                        <h6 class="notification-heading">Event Ended Successfully</h6>
                                                        <span class="notification-text">One hour ago</span>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void()">
                                                    <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                    <div class="notification-content">
                                                        <h6 class="notification-heading">Events to Join</h6>
                                                        <span class="notification-text">After two days</span> 
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                        
                                    </div>
                                </div>
                            </li>
                            <li class="icons dropdown">
                                <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                    <img src="resources/images/default-profile-pic.jpg" height="40" width="40" alt="">
                                </div>
                                <div class="drop-down dropdown-profile   dropdown-menu">
                                    <div class="dropdown-content-body">
                                        <ul>
                                            <li>
                                                <a href="app-profile.html"><i class="icon-home"></i> <span>내 다이어리로</span></a>
                                            </li>
                                            <li>
                                                <a href="email-inbox.html"><i class="icon-settings"></i> <span>설정</span></a>
                                            </li>
                                            
                                            <hr class="my-2">
                                            <li>
                                                <a href="page-lock.html"><i class="icon-lock"></i> <span>스크린 잠금</span></a>
                                            </li>
                                            <li><a href="page-login.html"><i class="icon-key"></i> <span>로그아웃</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--**********************************
                Header end ti-comment-alt
            ***********************************-->

            <!--**********************************
                Sidebar start
            ***********************************-->
            <div class="nk-sidebar">           
                <div class="nk-nav-scroll">
                    <ul class="metismenu" id="menu">
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-home menu-icon"></i><span class="nav-text">소개글</span>
                            </a>
                        </li>
                        <!-- 메인메뉴 -->
                        <li class="nav-label">메인메뉴</li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-calender menu-icon"></i><span class="nav-text">캘린더</span>
                            </a>
                        </li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-notebook menu-icon"></i><span class="nav-text">다이어리</span>
                            </a>
                        </li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-note menu-icon"></i><span class="nav-text">프리노트</span>
                            </a>
                        </li>
                        <li>
                            <a href="selectList.ph" aria-expanded="false" style="background:#F3F3F9">
                                <i class="icon-picture menu-icon"></i><span class="nav-text">사진게시판</span>
                            </a>
                        </li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-wallet menu-icon"></i><span class="nav-text">가계부</span>
                            </a>
                        </li>
                        <!-- 위젯메뉴 -->
                        <li class="nav-label">위젯메뉴</li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-clock menu-icon"></i><span class="nav-text">디데이</span>
                            </a>
                        </li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-speech menu-icon"></i><span class="nav-text">단어장</span>
                            </a>
                        </li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-doc menu-icon"></i><span class="nav-text">메모장</span>
                            </a>
                        </li>
                        <li>
                            <a href="url" aria-expanded="false">
                                <i class="icon-grid menu-icon"></i><span class="nav-text">시간표<span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--**********************************
                Sidebar end
            ***********************************-->

            <!--**********************************
                Content body start
            ***********************************-->
            
            <c:if test="${ !empty alertMsg }">
            	<script>
            		alert("${ alertMsg }");
            	</script>
            	<c:remove var="alertMsg" scope="session"/>
            </c:if>
            
            <div class="content-body" style="float: left;">
                <div class="row page-titles mx-0">
                    <h3 style="color:rgb(94, 94, 94); padding-left: 15px; ">사진게시판</h3>
                </div>
                <!-- row -->
                <a class="btn mb-1 btn-success" style="margin-left: 690px; margin-right:15px; font-size: 20px;" href="enroll.ph">사진 올리기</a>
                <a class="btn mb-1 btn-success deleteButton" style="font-size: 20px;">삭제</a>
                <div class="container-fluid" style="margin-top:15px;">
                    <div class="row">
                        <div class="col-12">
                            <div class="card" style="width:900px;">
                                <div class="card-body" >
                                	
                                	<form action = "delete.ph" method="get" id="photo_form">
	                                    <c:forEach var="p" items="${ list }" varStatus="status">
			                                <div class="photo_main">
			                                    <div class="photo_main_photo">
			                                    	<input type="checkbox" class="removeBox" name="deleteNums" value="${ p.photoNo }">
			                                        <img src="${ p.photoChangeName }" alt="">
			                                    </div>
			                                    <div class="photo_main_date">
			                                        ${ p.photoDate }
			                                    </div>
			                                    <div class="photo_main_content">
			                                        ${ p.photoContent }
			                                    </div>
			                                </div>
	                                    </c:forEach>
									</form>
									
									<script>
										// 게시글 삭제
										$(function(){
											$(".removeBox").css("display","none");
											$(".deleteButton").click(function(){
												if($(".deleteButton").html()=="삭제"){
													$(this).html("확인");
													$(".removeBox").css("display","");
													$(".photo_main_photo img").click(function(){
														if($(this).prev().attr("checked")==true){
															$(this).prev().prop("checked",false);
														}else{
															$(this).prev().prop("checked",true);
														}
													});
												}else{
													if($("input:checkbox[class=removeBox]:checked").length > 0){
														var test = confirm("정말 삭제하시겠습니까?");
														if(test == true){
															$("#photo_form").submit();
														}else{
															$("input:checkbox[class=removeBox]:checked").prop("checked", false);
														}
													}
													$(this).html("삭제");
													$(".removeBox").css("display","none");
												}
											})
										})
									</script>
									
	                                <div class="bootstrap-pagination" style="margin-left: 300px; margin-top:50px;">
	                                	<div id="pagingArea">
							                <ul class="pagination">
							                
							                	<c:choose>
							                		<c:when test="${ pi.currentPage eq 1 }">
									                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
							                		</c:when>
							                		<c:otherwise>
									                    <li class="page-item"><a class="page-link" href="selectList.ph?currentPage=${ pi.currentPage-1 }">Previous</a></li>
							                		</c:otherwise>
							                    </c:choose>
							                    
							                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							                    	<li class="page-item"><a class="page-link" href="selectList.ph?currentPage=${ p }">${ p }</a></li>
							                    </c:forEach>
							                    
							                    <c:choose>
							                		<c:when test="${ pi.currentPage eq pi.maxPage }">
									                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
							                		</c:when>
							                		<c:otherwise>
							                    		<li class="page-item"><a class="page-link" href="selectList.ph?currentPage=${ pi.currentPage+1 }">Next</a></li>
							                		</c:otherwise>
							                    </c:choose>
							                    
							                    
							                </ul>
							            </div>
	                                </div>
	                                
				                    <script>
				                    	// 현재 페이지 색칠
				                    	$(function(){
				                    		$(".page-link").each(function(){
				                    			if($(this).text()==${ pi.currentPage }){
				                    				$(this).css({"background":"rgb(132,200,185)", "color":"white"});
				                    			}
				                    		});
				                    	})
				                    </script>
				                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #/ container -->
            </div>        
            
        </div>
        <!--**********************************
            Content body end
        ***********************************-->  
        
        <!--**********************************
            Widget area start
            ***********************************-->
            <div class="widget-area" style="float:left; margin-top: 100px;">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <img alt="" class="rounded-circle mt-4" src="resources/images/default-profile-pic.jpg" width="110px">
                            <h4 class="card-widget__title text-dark mt-3">사용자 별명</h4>
                            <p class="text-muted">Senior Manager</p>
                            <a class="btn gradient-7 btn-lg border-0 btn-rounded px-5" href="javascript:void()">Folllow</a>
                        </div>
                    </div>
                    <div class="card-footer border-0 bg-transparent">
                        <div class="row">
                            <div class="col-4 border-right-1 pt-3">
                                <a class="text-center d-block text-muted" href="javascript:void()">
                                    <i class="fa fa-star gradient-1-text" aria-hidden="true"></i>
                                    <p class="">Star</p>
                                </a>
                            </div>
                            <div class="col-4 border-right-1 pt-3"><a class="text-center d-block text-muted" href="javascript:void()">
                                <i class="fa fa-heart gradient-3-text"></i>
                                <p class="">Like</p>
                            </a>
                        </div>
                        <div class="col-4 pt-3"><a class="text-center d-block text-muted" href="javascript:void()">
                            <i class="fa fa-envelope gradient-4-text"></i>
                            <p class="">Email</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="card card-widget">
            <div class="card-body gradient-4">
                <div class="media">
                    <span class="card-widget__icon"><i class="icon-emotsmile"></i></span>
                    <div class="media-body">
                        <h2 class="card-widget__title">1002</h2>
                        <h5 class="card-widget__subtitle">Task Completed</h5>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="card">
            <div class="stat-widget-one">
                <div class="stat-content">
                    <div class="stat-text">Today Expenses</div>
                    <div class="stat-digit"><i class="fa fa-usd"></i>8500</div>
                </div>
                <div class="progress mb-3">
                    <div class="progress-bar gradient-3" style="width: 50%;" role="progressbar"><span class="sr-only">50% Complete</span>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <!--**********************************
        Widget area end
    ***********************************-->
    <br clear="both">
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
    
    <!--**********************************
        Footer start
        ***********************************-->
        <div align="center">
            <div class="">
                <p>Copyright &copy; Designed & Developed by <a href="">Dlog</a> 2020</p>
            </div>
    </div>
    <!--**********************************
        Footer end
    ***********************************-->  

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="resources/plugins/common/common.min.js"></script>
    <script src="resources/js/custom.min.js"></script>
    <script src="resources/js/settings.js"></script>
    <script src="resources/js/gleek.js"></script>
    <script src="resources/js/styleSwitcher.js"></script>
	
</body>

</html>