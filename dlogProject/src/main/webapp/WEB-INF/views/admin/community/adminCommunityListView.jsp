<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dlog</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="resources/images/DlogLogo-title.png">
<style>
    .pagination .active>a{
        background: #7571f9 !important; 
    }
</style>
</head>
<body>
	
	<jsp:include page="../../common/adminHeader.jsp" />
	
	
    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body" style="float: left;">
        <div class="row page-titles mx-0">
            <h3 style="color:rgb(94, 94, 94); padding-left: 15px;">커뮤니티 관리</h3>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card" style="width:900px;">
                        <div class="card-body">
                            <h4 class="card-title">게시글</h4>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover zero-configuration" id="listTable">
                                    <thead>
                                        <tr>
                                            <th>글 번호</th>
                                            <th>글 제목</th>
                                            <th>작성자 아이디</th>
                                            <th>조회수</th>
                                            <th>댓글수</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="fn" items="${ list }">
                                    		<tr>
                                                <td>${ fn.freenoteNo }</td>
                                                <td>${ fn.freenoteTitle }</td>
                                                <td>${ fn.memberId }</td>
                                                <td>${ fn.freenoteCount }</td>
                                                <td>${ fn.replyCount }</td>
                                                <td>${ fn.createDate }</td>
                                            </tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                                <script>
                                	$(function(){
                                		$("#listTable>tbody>tr").each(function(){
                                			$(this).css("cursor", "pointer");
                                			$(this).click(function(){
                                				location.href="admin_detail.co?fno=" + $(this).find("td:eq(0)").text();
                                			});
                                		});
                                	});
                                </script>
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
    
    
	<jsp:include page="../../common/diaryFooter.jsp" />

</body>
</html>