<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dlog</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/images/webImage.png" />

<style>
    #searchForm input, #searchForm select{
        width: 400px; 
        height: 50px; 
        border: .1px solid lightgrey; 
        border-radius: 4px;
    }
    #searchForm select{
        width: 120px;
    }
    #searchForm #searchBtn{
        width: 50px; 
        height: 50px; 
        border: .1px solid rgb(132,200,185); 
        background: rgb(132,200,185);
        border-radius: 4px;
        color:white
    }
    .nav-tabs a{
        color:rgb(49, 49, 49);
        font-size: 18px;
        height: 60px;
    }
    .listCard{
        border: .5px solid lightgrey;
        height:140px;
        width:990px;
        border-radius: 5px;
        margin-top:20px;
        padding:15px;
    }
    .listCard:hover{
        cursor:pointer;
        background:rgba(245, 245, 245, 0.678);
    }
</style>
</head>
<body>
	<jsp:include page="../../common/mainHeader.jsp" />
	
	<script>
        $(function(){
            var navbarCollapse = function() {
                $("#mainNav").addClass("navbar-shrink");
                $(".logoImage").addClass("image-shrink");
                $(".nav-lcs").addClass("nav-item-shrink");
            };
            navbarCollapse();
            $(window).scroll(navbarCollapse);
            
            $(".nav-link[href*='list.co']").addClass("select");
            $(".nav-tabs .nav-link[href*='topic=${topic}']").addClass("active");
        });
    </script>

	<!-- Content Section-->
    <section class="page-section">
        <div class="container" style="margin-top: 100px; width: 1050px;">
            <div align="center">
                <form action="search.co" method="get" id="searchForm">
                    <select name="condition">
                        <option value="writerTitle">작성자+제목</option>
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                    </select>
                    <input type="text" name="keyword">
                    <button type="submit" id="searchBtn"><i class="fa fa-search"></i></button>
                </form>
            </div>

            <br><br><br>

            <span style="font-size: 23px; color:rgb(82, 82, 82);">주제별 모아보기 | </span> 다양한 주제의 글을 최신순으로 확인할 수 있습니다 :D
            <br><br>
            
            <ul class="nav nav-tabs nav-justified">
                <li class="nav-item">
                  <a class="nav-link" href="list.co?topic=0">전체</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="list.co?topic=1">엔터테인먼트/예술</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="list.co?topic=2">생활/노하우/쇼핑</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="list.co?topic=3">취미/여가/여행</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="list.co?topic=4">지식/동향</a>
                </li>
            </ul>

            <div id="listArea" align="center">
                <c:forEach var="fn" items="${ list }">
	                <div class="listCard">
	                	<input type="hidden" value="${ fn.freenoteNo }">
	                    <table>
	                        <tr>
	                            <td width="790" height="40">
	                                <img src="resources/images/default-profile-pic.jpg" width="40" height="40" class="rounded-circle">&nbsp;
	                                ${ fn.freenoteWriter }
	                            </td>
	                            <td width="140" align="right">
	                                <c:if test="${ fn.freenoteTopic ne '주제선택안함' }" >
	                                	${ fn.freenoteTopic }
	                                </c:if>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td colspan="2" height="40" style="font-size: 17px;">
	                                ${ fn.freenoteTitle }
	                            </td>
	                        </tr>
	                        <tr>
	                            <td colspan="2">
	                                ${ fn.createDate } &emsp;좋아요 ${ fn.freenoteLike } &emsp; 댓글 5
	                            </td>
	                        </tr>
	                    </table>
	                </div>
                </c:forEach>
                <c:if test="${ empty list }">
                	조회된 결과가 없습니다.
                </c:if>
                
                <script>
                	$(function(){
                		$(".listCard").click(function(){
                			location.href="detail.co?fno=" + $(this).find("input").val();
                		});
                	});
                </script>
                
                <br><br>

                <ul class="pagination pagination-lg justify-content-center">
                    
                    <c:if test="${ pi.currentPage ne 1 }">
                    	<li class="page-item"><a class="page-link" href="list.co?topic=${ topic }&currentPage=${ pi.currentPage - 1 }">Previous</a></li>
                    </c:if>
                    
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<c:choose>
                    		<c:when test="${ pi.currentPage ne p }">
                    			<li class="page-item"><a class="page-link" href="list.co?topic=${ topic }&currentPage=${ p }">${ p }</a></li>
                    		</c:when>
                    		<c:otherwise>
                    			<li class="page-item active"><a class="page-link">${ p }</a></li>
                    		</c:otherwise>
                    	</c:choose>
                    </c:forEach>
                    
                    <c:if test="${ pi.currentPage ne pi.maxPage and pi.listCount > 0 }">
                    	<li class="page-item"><a class="page-link" href="list.co?topic=${ topic }&currentPage=${ pi.currentPage + 1 }">Next</a></li>
                    </c:if>
                </ul>

            </div>
        </div>
    </section>

	<jsp:include page="../../common/mainFooter.jsp" />
</body>
</html>