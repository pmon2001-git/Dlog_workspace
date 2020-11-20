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
        });
    </script>

	<!-- Contact Section-->
    <section class="page-section">
        <div class="container" style="margin-top: 100px; width: 1050px;">
            <div align="center">
                <form action="" id="searchForm">
                    <select name="" id="">
                        <option value="">작성자+제목</option>
                        <option value="">작성자</option>
                        <option value="">제목</option>
                    </select>
                    <input type="text" name="keyword">
                    <button type="submit" id="searchBtn"><i class="fa fa-search"></i></button>
                </form>
            </div>

            <br><br><br>

            <p style="font-size: 25px;">주제별 모아보기</p>
            <br>
            <ul class="nav nav-tabs nav-justified">
                <li class="nav-item">
                  <a class="nav-link active" href="#">전체</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">엔터테인먼트/예술</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">생활/노하우/쇼핑</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">취미/여가/여행</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">지식/동향</a>
                </li>
            </ul>

            <div id="listArea" align="center">
                <div class="listCard">
                    <table>
                        <tr>
                            <td width="190" height="40">
                                <img src="resources/images/default-profile-pic.jpg" width="40" height="40" class="rounded-circle">&nbsp;
                                사용자별명
                            </td>
                            <td width="600">
                                2020-11-01
                            </td>
                            <td width="140">
                                생활/노하우/쇼핑
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="40" style="font-size: 17px;">
                                제목입니다제목입니다제목입니다
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                좋아요 10 &emsp; 댓글 5
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="listCard">
                    <table>
                        <tr>
                            <td width="190" height="40">
                                <img src="resources/images/default-profile-pic.jpg" width="40" height="40" class="rounded-circle">&nbsp;
                                사용자별명
                            </td>
                            <td width="600">
                                2020-11-01
                            </td>
                            <td width="140">
                                생활/노하우/쇼핑
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="40" style="font-size: 17px;">
                                제목입니다제목입니다제목입니다
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                좋아요 10 &emsp; 댓글 5
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="listCard">
                    <table>
                        <tr>
                            <td width="190" height="40">
                                <img src="resources/images/default-profile-pic.jpg" width="40" height="40" class="rounded-circle">&nbsp;
                                사용자별명
                            </td>
                            <td width="600">
                                2020-11-01
                            </td>
                            <td width="140">
                                생활/노하우/쇼핑
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="40" style="font-size: 17px;">
                                제목입니다제목입니다제목입니다
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                좋아요 10 &emsp; 댓글 5
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="listCard">
                    <table>
                        <tr>
                            <td width="190" height="40">
                                <img src="resources/images/default-profile-pic.jpg" width="40" height="40" class="rounded-circle">&nbsp;
                                사용자별명
                            </td>
                            <td width="600">
                                2020-11-01
                            </td>
                            <td width="140">
                                생활/노하우/쇼핑
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="40" style="font-size: 17px;">
                                제목입니다제목입니다제목입니다
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                좋아요 10 &emsp; 댓글 5
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="listCard">
                    <table>
                        <tr>
                            <td width="190" height="40">
                                <img src="resources/images/default-profile-pic.jpg" width="40" height="40" class="rounded-circle">&nbsp;
                                사용자별명
                            </td>
                            <td width="600">
                                2020-11-01
                            </td>
                            <td width="140">
                                생활/노하우/쇼핑
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="40" style="font-size: 17px;">
                                제목입니다제목입니다제목입니다
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                좋아요 10 &emsp; 댓글 5
                            </td>
                        </tr>
                    </table>
                </div>
                <br><br>

                <ul class="pagination pagination-lg justify-content-center">
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

            </div>
        </div>
    </section>

	<jsp:include page="../../common/mainFooter.jsp" />
</body>
</html>