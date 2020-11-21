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
    #searchForm input, #searchForm select, #sortOpt{
        width: 400px; 
        height: 50px; 
        border: .1px solid lightgrey; 
        border-radius: 4px;
        padding: 0 10px;
    }
    #searchForm select{
    	padding: 0;
        width: 120px;
    }
    #searchForm #searchBtn{
        width: 50px; 
        height: 50px; 
        border: .1px solid rgb(132,200,185); 
        background: rgb(132,200,185);
        border-radius: 4px;
        color: white;
    }
    #sortOpt{
        width: 90px;
        height: 35px;
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
                    <input type="text" name="keyword" value="${ keyword }">
                    <button type="submit" id="searchBtn"><i class="fa fa-search"></i></button>
                </form>
            </div>

            <br><br><br>

            <table>
                <tr>
                    <td width="900">
                        "${ keyword }"에 대한 검색 결과 입니다. (${ pi.listCount }건)
                    </td>
                    <td>
                        <select name="sort" id="sortOpt">
                            <option value="recent">최신순</option>
                            <option value="popular">조회순</option>
                        </select>
                    </td>
                </tr>
            </table>
            <script>
            	$(function(){
            		$("#searchForm option[value=${condition}]").attr("selected", true);
            		
            		$("#sortOpt").change(function(){
            			var $sort = $("#sortOpt").val();
            			location.href="search.co?condition=${ condition }&keyword=${ keyword }&sort=" + $sort;
            		});
            		
            		$("#sortOpt option[value='${ sort }']").attr("selected", true);
            		
            	});
            </script>
            
            <hr>
            

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
                    	<li class="page-item"><a class="page-link" href="search.co?condition=${ condition }&keyword=${ keyword }&sort=${ sort }&currentPage=${ pi.currentPage - 1 }">Previous</a></li>
                    </c:if>
                    
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<c:choose>
                    		<c:when test="${ pi.currentPage ne p }">
                    			<li class="page-item"><a class="page-link" href="search.co?condition=${ condition }&keyword=${ keyword }&sort=${ sort }&currentPage=${ p }">${ p }</a></li>
                    		</c:when>
                    		<c:otherwise>
                    			<li class="page-item active"><a class="page-link">${ p }</a></li>
                    		</c:otherwise>
                    	</c:choose>
                    </c:forEach>
                    
                    <c:if test="${ pi.currentPage ne pi.maxPage and pi.listCount > 0 }">
                    	<li class="page-item"><a class="page-link" href="search.co?condition=${ condition }&keyword=${ keyword }&sort=${ sort }&currentPage=${ pi.currentPage + 1 }">Next</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </section>
	
	<jsp:include page="../../common/mainFooter.jsp" />

</body>
</html>