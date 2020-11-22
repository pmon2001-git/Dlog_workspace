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
    .page-section .container{
        background-color: rgb(250, 250, 250);
        padding: 50px;
    }
    #searchForm input, #searchForm select, #sortOpt{
        width: 400px; 
        height: 50px; 
        border: .1px solid lightgrey; 
        border-radius: 4px;
    }
    #replyArea div{
        margin-bottom: 15px;
    }
    .page-section .container textarea{
        width: 100%; 
        height: 90px; 
        border: .1px solid lightgrey; 
        border-radius: 5px;
        resize: none; 
        /* margin-bottom: 0; */
    }
    .page-section .container textarea:focus, .enrollBtn:focus{
        outline:none
    }
    .enrollBtn, #addFriendBtn{
        border:none;
        background-color: rgb(132, 200, 185);
        color: white;
        border-radius: 5px;
        width: 70px;
        height: 35px;
        font-size: 15px;
        /* margin-top: 0; */
    }
    #addFriendBtn{
        height: 30px;
        margin-top: 10px;
        width: 75px;
    }
    .enrollBtn:hover, #addFriendBtn:hover{
        background-color: rgb(172, 223, 213);
        color: rgb(88, 88, 88);
    }
    #replyPagination button{
        border:none;
        background:rgb(202, 202, 202);
        border-radius: 5px;
        height: 30px;
        width: 25px;
    }
    #replyPagination button:hover{
        background:rgb(233, 233, 233);
    }
    #replyPagination{
        margin: 30px;
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
    
    <!-- Contact Section-->
    <section class="page-section">
        <div class="container" style="margin-top: 80px; width: 1050px;">
            <div id="titleArea">
                <table>
                    <tr>
                        <td width="750" style="font-size: 20px;">${ fn.freenoteTitle }</td>
                        <td width="200" align="right">
                            <img src="resources/images/default-profile-pic.jpg" class="rounded-circle" height="35" width="35"> 
                            &nbsp; <a type="button" data-toggle="popover" data-content="
                                <div align='center'>
                                    ${ fn.freenoteWriter }님의 다이어리가 궁금하다면 <br>
                                    친구가 되어 방문할 수 있습니다. <br>
                                    <button id='addFriendBtn' onclick='test()'>친구요청</button>
                                </div>
                            " data-placement="right">${ fn.freenoteWriter }</a>
                        </td>
                    </tr>
                </table>
            </div>
            <script>
                $(function() {
                    $('[data-toggle="popover"]').popover({
                        html: true,
                        sanitize: false,
                        trigger:"manual"
                    })
                    .on("mouseenter", function () {
                        var _this = this;
                        $(this).popover("show");
                        $(".popover").on("mouseleave", function () {
                            $(_this).popover('hide');
                        });
                    }).on("mouseleave", function () {
                        var _this = this;
                        setTimeout(function () {
                            if (!$(".popover:hover").length) {
                                $(_this).popover("hide");
                            }
                        }, 300);
                    });
                })
                function test(){
                    location.href=""
                }
            </script>
            
            <hr style="margin:10px 0">
            <div id="dateArea" style="text-align: right;">
                ${ fn.createDate }
            </div>
            <div id="contentArea" style="min-height: 500px;">
				${ fn.freenoteContent }
            </div>
            <div id="etcArea">
                <table>
                    <tr>
                        <td width="500">
                            댓글 2 &emsp;
                            <!-- <a href="" style="text-decoration: none; color: black;"><i class="far fa-heart" style="color: black;"></i> 좋아요</a> -->
                            <a href="" style="text-decoration: none; color: black"><i class="fas fa-heart" style="color: black;"></i> 좋아요</a>
                            &nbsp;1
                        </td>
                        <td width="450" align="right">
                            <a href="">내 다이어리에서 보기 &#8594;</a>
                            <!-- <button class="btn btn-basic btn-sm" id="report" onclick="report(3, 1, 2);">신고</button> -->
                        </td>
                    </tr>
                </table>
            </div>
            <hr>
            <div id="replyArea">
                <div class="reply1">
                    <table>
                        <tr>
                            <td colspan="2" height="40">                            
                                <img src="resources/images/default-profile-pic.jpg" class="rounded-circle" height="35" width="35"> &nbsp;작성자 별명
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다
                            </td>
                        </tr>
                        <tr height="30">
                            <td width="750">
                                2020.10.01&nbsp;&nbsp;22:40&emsp;
                                <a href="" style="text-decoration: none; color: black;"><i class="far fa-heart" style="color: black;"></i> 좋아요</a>
                                <!-- <a href="" style="text-decoration: none; color: black"><i class="fas fa-heart" style="color: black;"></i> 좋아요</a> -->
                                &nbsp;0
                            </td>
                            <td width="200" align="right">
                                <!-- <button class="btn btn-basic btn-sm">삭제</button> -->
                                <button class="btn btn-basic btn-sm" id="report" onclick="report(1, 3, 2);">신고</button>
                            </td>
                        </tr>
                        <tr>
                            <td><button class="btn btn-light btn-sm addReply2">답글</button></td>
                        </tr>
                    </table>
                </div>
                <div class="enrollReply2" align="right" style="margin: 0; display: none;">
                    <table>
                        <tr>
                            <td width="50" style="vertical-align: top;">
                                <img src="resources/images/reply_arrow.png" width="30">
                            </td>
                            <td width="900">
                                <textarea name="" class="reply2Content" placeholder="내용을 입력해주세요"  maxlength="500"></textarea>
                            </td>
                        </tr>
                    </table>
                    <span class="count2">0</span>/500&nbsp;&nbsp;<button class="enrollBtn">등록</button>
                </div>
                <div class="reply2">
                    <table>
                        <tr>
                            <td width="50">
                                <img src="resources/images/reply_arrow.png" width="30">
                            </td>
                            <td colspan="2" height="40">                            
                                <img src="resources/images/default-profile-pic.jpg" class="rounded-circle" height="35" width="35"> &nbsp;작성자 별명
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2">
                                눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다
                            </td>
                        </tr>
                        <tr height="30">
                            <td></td>
                            <td width="700">
                                2020.10.01&nbsp;&nbsp;22:40&emsp;
                                <a href="" style="text-decoration: none; color: black;"><i class="far fa-heart" style="color: black;"></i> 좋아요</a>
                                <!-- <a href="" style="text-decoration: none; color: black"><i class="fas fa-heart" style="color: black;"></i> 좋아요</a> -->
                                &nbsp;0
                            </td>
                            <td width="200" align="right">
                                <button class="btn btn-basic btn-sm">삭제</button>
                                <!-- 신고 -->
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="reply1">
                    <table>
                        <tr>
                            <td colspan="2" height="40">                            
                                <img src="resources/images/default-profile-pic.jpg" class="rounded-circle" height="35" width="35"> &nbsp;작성자 별명
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다
                            </td>
                        </tr>
                        <tr height="30">
                            <td width="750">
                                2020.10.01&nbsp;&nbsp;22:40&emsp;
                                <a href="" style="text-decoration: none; color: black;"><i class="far fa-heart" style="color: black;"></i> 좋아요</a>
                                <!-- <a href="" style="text-decoration: none; color: black"><i class="fas fa-heart" style="color: black;"></i> 좋아요</a> -->
                                &nbsp;0
                            </td>
                            <td width="200" align="right">
                                <!-- <button class="btn btn-basic btn-sm">삭제</button> -->
                                <button class="btn btn-basic btn-sm" id="report" onclick="report(1, 3, 2);">신고</button>
                            </td>
                        </tr>
                        <tr>
                            <td><button class="btn btn-light btn-sm addReply2">답글</button></td>
                        </tr>
                    </table>
                </div>
                <div class="enrollReply2" align="right" style="margin: 0; display: none;">
                    <table>
                        <tr>
                            <td width="50" style="vertical-align: top;">
                                <img src="resources/images/reply_arrow.png" width="30">
                            </td>
                            <td width="900">
                                <textarea name="" class="reply2Content" placeholder="내용을 입력해주세요"  maxlength="500"></textarea>
                            </td>
                        </tr>
                    </table>
                    <span class="count2">0</span>/500&nbsp;&nbsp;<button class="enrollBtn">등록</button>
                </div>
                <div id="replyPagination" align="center">
                    <button>&lt;</button>
    
                    <button disabled>1</button>
                    <button>2</button>
                    <button>3</button>
                    <button>4</button>
                    <button>5</button>
    
                    <button>&gt;</button>
                    
                </div>
                <div class="enrollReply1" align="right" style="padding-top: 30px;">
                    <textarea name="" id="enrollReply1" placeholder="내용을 입력해주세요"  maxlength="500"></textarea>
                    <br>
                    <span id="count1">0</span>/500&nbsp;&nbsp;<button class="enrollBtn">등록</button>
                </div>
                
            </div>

        </div>
    </section>

    <script>
        $(function(){
            $(".addReply2").click(function(){
                var $reply2form = $(this).parents(".reply1").next();

                if($reply2form.css("display")=="none"){
                    $reply2form.css("display", "block");
                    $reply2form.find("textarea").val("");
                    $reply2form.find("textarea").focus();
                }else{
                    $reply2form.css("display", "none");
                }   
            });
        })

        // 댓글 글자 수 세기(메인댓글)
        $(function(){
            $("#enrollReply1").keyup(function(){
                // 현재 요소(textarea)안에 작성된 값의 길이를 알아내기
                var inputlength = $(this).val().length;
                
                $("#count1").html(inputlength);

                if(150-inputlength < 0){
                    $("#count1").css("color", "red");
                }else{
                    $("#count1").css("color","");
                }
            }); 
        });

        // 댓글 글자 수 세기(서브댓글)
        $(function(){
            $(".reply2Content").keyup(function(){
                // 현재 요소(textarea)안에 작성된 값의 길이를 알아내기
                var inputlength = $(this).val().length;
                
                $(this).parents(".enrollReply2").children("span[class=count2]").html(inputlength);
                // $("#count1").html(inputlength);

                
            }); 
        });
    </script>

    <!-- 신고폼 모달 -->
    <div class="modal" id="reportModal">
        <div class="modal-dialog">
            <div class="modal-content"  style="border:0.5px solid lightgrey;width: 410px;">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h5>신고하기</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body" style="padding:16px;">
                    <form method="post" id="reportForm">
                        <input type="hidden" name="reportPostNo" id="reportPostNo">
                        <input type="hidden" name="reportPostType" id="reportPostType">
                        <p style="font-size: 13px; padding-left:20px;">
                            * 신고하신 내용은 증거자료를 참고하여 Dlog 약관에 의거해 조치됩니다. <br>
                            * 증거 내용이 불충분하거나 타당한 이유가 아니면 무효 처리됩니다. <br>
                            * 허위 신고의 경우 신고자가 제재받을 수 있음을 유념해주세요. <br>
                        </p>
                        <br>
                        <b style="color:black;">신고유형</b>
                        <select name="reportType" class="form-control" required>
                            <option value="" disabled selected hidden>신고 내용을 선택하세요.</option>
                            <option value="영리목적">영리목적</option>
                            <option value="불법성">불법성</option>
                            <option value="욕설">욕설</option>
                            <option value="도배">도배</option>
                            <option value="개인정보노출">개인정보노출</option>
                            <option value="음란성">음란성</option>
                            <option value="명의도용">명의도용</option>
                            <option value="기타">기타</option>
                        </select>
                        <br>
                        <b style="color:black;">신고내용</b>
                        <textarea name="reportContent" id="reportContent" cols="30" rows="4" style="resize: none;overflow:auto;" class="form-control" maxlength="1000" required></textarea>
                        <br>
                        <div align="center">
                            <input type="checkbox" required id="agreeCheck"> <label for="agreeCheck">개인 정보 수집 및 이용에 동의합니다.</label>
                            <br><br>
                            <button type="submit" class="btn btn-primary">제출</button>
                            <br><br>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div> <!--  report modal end -->
    <!-- 신고폼 모달 ajax 스크립트 -->
	<script>
		var reportModal = document.getElementById("reportModal");
		
		$(function(){
			$(".close").click(function() {
				reportModal.style.display = "none";
			});
		});
		
		function report(postNo, userNo2, reportPostType){
			$("#reportPostNo").val(postNo);
			$("#reportUserNo2").val(userNo2);
			$("#reportPostType").val(reportPostType);
			reportModal.style.display = "block";
		}
		
		$("#reportForm").submit(function(e){
			e.preventDefault();
			var form = $(this);
			
			$.ajax({
				type:"post",
				url:"insert.rp",
				data:form.serialize(),
				success:function(result2){
					
					if(result2>0){
						alert("신고되었습니다.");
						reportModal.style.display = "none";
						document.getElementById("reportForm").reset();
						
					}else{
						alert("이미 신고하셨습니다.")
						reportModal.style.display = "none";
						document.getElementById("reportForm").reset();
					}
					
				}, error:function(){
					console.log("Ajax 통신 실패");
				}
			});
		});
			
	</script>
    
    

	<jsp:include page="../../common/mainFooter.jsp" />

</body>
</html>