<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../common/diaryHeader.jsp" />
	
	<script>
		$(function(){
			$("a[href='list.fn?mno=1']").addClass("active");
			$("a[href='list.fn?mno=1']").parent().addClass("active");
		});
	</script>
	<!--**********************************
	             Content body start
	***********************************-->
	<div class="content-body" style="float: left;">
	    <div class="row page-titles mx-0">
	        <h3 style="color:rgb(94, 94, 94); padding-left: 15px; ">프리노트</h3>
	    </div>
	    <!-- row -->
	
	    <div class="container-fluid">
	        <div class="row">
	            <div class="col-12">
	                <div class="card" style="width:900px;">
	                    <div class="card-body" >
	                        <div class="table-responsive">
	                            <!-- 검색영역 -->
	                            <table>
	                                <tr>
	                                    <td width="700">
	                                        <form action="list.fn" type="get" class="form-inline">
	                                        	<input type="hidden" name="mno" value="${ sc.mno }">
	                                        	<input type="hidden" name="currentPage" value="1" >
	                                        	<input type="hidden" name="category" value="${ sc.category }">
	                                        	<input type="hidden" name="boardLimit" value="${ sc.boardLimit }">
	                                            <input type="text" name="title" value="${ sc.title }" style="width: 200px; height: 30px; border: .1px solid lightgrey; border-radius: 4px; padding-left:5px;">
	                                            <button type="submit" class="btn btn-secondary btn-sm"><i class="fa fa-search"></i></button>
	                                        </form>
	                                    </td>
	                                    <td width="60">
	                                        <select name="boardLimit" style="height: 30px; border: .1px solid lightgrey; border-radius: 4px;">
	                                            <option value="5">5줄</option>
	                                            <option value="10">10줄</option>
	                                            <option value="15">15줄</option>
	                                            <option value="20">20줄</option>
	                                        </select> 
	                                    </td>
	                                    <td>
	                                        <select name="category" style="height: 30px; border: .1px solid lightgrey; border-radius: 4px;">
	                                            <option value="">전체</option>
	                                            <c:forEach var="c" items="${ cateList }" >
	                                            	<option value="${ c }">${ c }</option>
	                                            </c:forEach>
	                                        </select>
	                                    </td>
	                                </tr>
	                            </table>
	                            <script>
	                            	$(function(){
	                            		$(".content-body select").change(function(){
	                            			var $boardLimit = $("select[name=boardLimit]").val();
	                            			var $category = $("select[name=category]").val();
	                            			location.href="list.fn?mno=" + ${ sc.mno } + "&currentPage=1&boardLimit=" + $boardLimit + "&category=" + $category + "&title=" + "${ sc.title }";
	                            		});
	                            		
	                            		$("select[name=boardLimit] option[value='${ sc.boardLimit }'], select[name=category] option[value='${ sc.category }']").attr("selected", true);
	                            	});
	                            </script>
	                            
	                            <br>
	
	                            <!-- 목록 -->
	                            <table class="table table-hover" id="listArea">
	                                <thead align="center">
	                                    <tr>
	                                        <th>번호</th>
	                                        <th width="500px">제목</th>
	                                        <th>카테고리</th>
	                                        <th>작성일</th>
	                                    </tr>
	                                </thead>
	                                <tbody align="center">
	                                    <c:forEach var="f" items="${ list }">
	                                    	<tr>
		                                        <td>${ f.freenoteNo }</td>
		                                        <td>
		                                        	${ f.freenoteTitle }&nbsp;
		                                        	<c:if test="${ f.freenotePrivacy eq 'N' }">
		                                        		<span class="badge badge-pill badge-light">&nbsp;비공개&nbsp;</span>
		                                        	</c:if>
		                                        </td>
		                                        <td>${ f.freenoteCategory }</td>
		                                        <td>${ f.createDate }</td>
		                                    </tr>
	                                    </c:forEach>
	                                </tbody>
	                            </table>
	                            <script>
	                            	$(function(){
	                            		$("#listArea>tbody>tr").each(function(){
	                            			$(this).find("td:eq(1)").css("cursor", "pointer");
	                            			
	                            			$(this).find("td:eq(1)").click(function(){
	                            				location.href="detail.fn?fno=" + $(this).prev().text();
	                            			});
	                            		});
	                            	});
	                            </script>
	                            <br>
	                            <!-- 페이징 -->
	                            <table align="center">
	                                <tr>
	                                    <td width="100" align="center"></td>
	                                    <td width="600">
	                                        <ul class="pagination justify-content-center">
	                                            
	                                            <c:if test="${ pi.currentPage ne 1 }">
		                                            <c:url var="searchUrl" value="list.fn">
		                                            	<c:param name="mno" value="${ sc.mno }" />
									            		<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
											            <c:param name="category" value="${ sc.category }" />
											            <c:param name="boardLimit" value="${ sc.boardLimit }" />
											            <c:param name="title" value="${ sc.title }" />
									            	</c:url>
							                    	<li class="page-item"><a class="page-link" href="${ searchUrl }">Previous</a></li>
	                                            </c:if>
	                                            
	                                            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	                                            	<c:choose>
	                                            		<c:when test="${ pi.currentPage ne p }">
		                                            		<c:url var="searchUrl" value="list.fn">
				                                            	<c:param name="mno" value="${ sc.mno }" />
											            		<c:param name="currentPage" value="${ p }" />
													            <c:param name="category" value="${ sc.category }" />
													            <c:param name="boardLimit" value="${ sc.boardLimit }" />
													            <c:param name="title" value="${ sc.title }" />
											            	</c:url>
									                    	<li class="page-item"><a class="page-link" href="${ searchUrl }">${ p }</a></li>
		                                            	</c:when>
		                                            	<c:otherwise>
		                                            		<li class="page-item active"><a class="page-link">${ p }</a></li>
		                                            	</c:otherwise>                              					
		                                            </c:choose>
	                                            </c:forEach>
	                                            
	                                            <c:if test="${ pi.currentPage ne pi.maxPage and pi.listCount > 0}">
	                                            	<c:url var="searchUrl" value="list.fn">
                                           				<c:param name="mno" value="${ sc.mno }" />
                                            			<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
											            <c:param name="category" value="${ sc.category }" />
											            <c:param name="boardLimit" value="${ sc.boardLimit }" />
											            <c:param name="title" value="${ sc.title }" />
									            	</c:url>
					                                <li class="page-item"><a class="page-link" href="${ searchUrl }">Next</a></li>
	                                            </c:if>
	                                        </ul>
	                                    </td>
	                                    <td width="100" align="center">
	                                        <button class="btn btn-success" onclick="location.href='enrollForm.fn';">글쓰기</button>
	                                    </td>
	                                </tr>
	                            </table>
	                        </div>                                
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <!-- #/ container -->
	</div>        
	<!--**********************************
	    Content body end
	***********************************-->
	<jsp:include page="../../common/diaryWidget.jsp" />
	<jsp:include page="../../common/diaryFooter.jsp" />
	
</body>
</html>