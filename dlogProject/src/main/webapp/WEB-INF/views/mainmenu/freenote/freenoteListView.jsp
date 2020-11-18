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
	                                        <form action="" class="form-inline">
	                                            <input type="text" style="width: 200px; height: 30px; border: .1px solid lightgrey; border-radius: 4px;">
	                                            <button type="submit" class="btn btn-secondary btn-sm"><i class="fa fa-search"></i></button>
	                                        </form>
	                                    </td>
	                                    <td width="60">
	                                        <select name="" id="" style="height: 30px; border: .1px solid lightgrey; border-radius: 4px;">
	                                            <option value="">5줄</option>
	                                            <option value="">10줄</option>
	                                        </select> 
	                                    </td>
	                                    <td>
	                                        <select name="" id="" style="height: 30px; border: .1px solid lightgrey; border-radius: 4px;">
	                                            <option value="">카테고리</option>
	                                        </select>
	                                    </td>
	                                </tr>
	                            </table>
	                            <br>
	
	                            <!-- 목록 -->
	                            <table class="table table-hover">
	                                <thead align="center">
	                                    <tr>
	                                        <th>번호</th>
	                                        <th width="500px">제목</th>
	                                        <th>작성일</th>
	                                    </tr>
	                                </thead>
	                                <tbody align="center">
	                                    <tr>
	                                        <th>5</th>
	                                        <td>제목입니다&nbsp;<span class="badge badge-pill badge-light">&nbsp;비공개&nbsp;</span></td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>4</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>3</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>2</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>1</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>5</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>4</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>3</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>2</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                    <tr>
	                                        <th>1</th>
	                                        <td>제목입니다</td>
	                                        <td>2020-11-01</td>
	                                    </tr>
	                                </tbody>
	                            </table>
	                            <br>
	                            <!-- 페이징 -->
	                            <table align="center">
	                                <tr>
	                                    <td width="100" align="center"></td>
	                                    <td width="600">
	                                        <ul class="pagination justify-content-center">
	                                            <li class="page-item"><a class="page-link" href="#">Previous</a>
	                                            </li>
	                                            <li class="page-item active"><a class="page-link" href="#">1</a>
	                                            </li>
	                                            <li class="page-item"><a class="page-link" href="#">2</a>
	                                            </li>
	                                            <li class="page-item"><a class="page-link" href="#">3</a>
	                                            </li>
	                                            <li class="page-item"><a class="page-link" href="#">4</a>
	                                            </li>
	                                            <li class="page-item"><a class="page-link" href="#">5</a>
	                                            </li>
	                                            <li class="page-item"><a class="page-link" href="#">Next</a>
	                                            </li>
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