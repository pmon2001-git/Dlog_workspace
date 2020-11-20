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
     .container-fluid input[type="text"], .container-fluid input[list="category"]{
         width:784px; 
         height: 35px; 
         border: .5px solid darkgrey;
         padding-left: 10px;
     }
     .card-body label{
         margin: 13px 0;
     }

    #replyArea textarea{
        resize: none;
    }
    .enrollReply2{
        display: none;
        /* margin-top: 15px; */
    }
    .reply1, .reply2{
        margin-bottom: 15px;;
    }
    #deleteBtn:hover{
    	cursor:pointer;
    }
</style>
</head>
<body>
	
	<jsp:include page="../../common/diaryHeader.jsp"/>
	
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
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="">프리노트</a></li>
                    <li class="breadcrumb-item active">상세보기</li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card" style="width:900px;">
                        <div class="card-body" >
                            
                            <div id="titleArea">
                                <table>
                                    <tr>
                                        <td width="400" style="font-size: 20px;">[${ fn.freenoteCategory }] ${ fn.freenoteTitle }</td>
                                        <td width="500" align="right">
                                            ${fn.createDate}
                                            &nbsp;|&nbsp;
                                            <a href="updateForm.fn?fno=${ fn.freenoteNo }">수정</a>
                                            &nbsp;|&nbsp;
                                            <a id="deleteBtn">삭제</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <hr style="margin:10px 0">
                            <div id="contentArea" style="min-height:300px; padding:10px; overflow:auto;">
                                ${ fn.freenoteContent }
                            </div>
                            <div id="etcArea">
                                댓글 0 &emsp;
                                좋아요
                                <!-- <a href=""><i class="mdi mdi-heart-outline" style="color: black;"></i> 좋아요</a> -->
                                <!-- <a href=""><i class="mdi mdi-heart" style="color: black;"></i> 좋아요</a> -->
                                ${ fn.freenoteLike }
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
                                                <a href=""><i class="mdi mdi-heart-outline" style="color: black;"></i> 좋아요</a>
                                                0
                                            </td>
                                            <td width="200" align="right">
                                                <!-- <button class="btn btn-basic btn-sm">삭제</button> -->
                                                <button class="btn btn-outline-light btn-sm">삭제</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><button class="btn btn-light btn-sm addReply2">답글</button></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="enrollReply2" align="right">
                                    <table>
                                        <tr>
                                            <td width="50" style="vertical-align: top;">
                                                <img src="resources/images/reply_arrow.png" width="25">
                                            </td>
                                            <td width="850">
                                                <textarea name="" class="form-control reply2Content" placeholder="내용을 입력해주세요" maxlength="500"></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                    <span class="count2">0</span>/500&nbsp;&nbsp;<button class="btn btn-flat btn-outline-success btn-sm">등록</button>
                                </div>
                                <div class="reply2">
                                    <table>
                                        <tr>
                                            <td width="50">
                                                <img src="resources/images/reply_arrow.png" width="25">
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
                                                <a href=""><i class="mdi mdi-heart-outline" style="color: black;"></i> 좋아요</a>
                                                0
                                            </td>
                                            <td width="200" align="right">
                                                <button class="btn btn-outline-light btn-sm">삭제</button>
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
                                                <a href=""><i class="mdi mdi-heart-outline" style="color: black;"></i> 좋아요</a>
                                                0
                                            </td>
                                            <td width="200" align="right">
                                                <!-- <button class="btn btn-basic btn-sm">삭제</button> -->
                                                <button class="btn btn-outline-light btn-sm">삭제</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><button class="btn btn-light btn-sm addReply2">답글</button></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="enrollReply2" align="right">
                                    <table>
                                        <tr>
                                            <td width="50" style="vertical-align: top;">
                                                <img src="resources/images/reply_arrow.png" width="25">
                                            </td>
                                            <td width="850">
                                                <textarea name="" class="form-control reply2Content" placeholder="내용을 입력해주세요" maxlength="500"></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                    <span class="count2">0</span>/500&nbsp;&nbsp;<button class="btn btn-flat btn-outline-success btn-sm">등록</button>
                                </div>
                                <div id="pagination" align="center">
                                    <button class="btn btn-secondary btn-sm">&lt;</button>
                    
                                    <button class="btn btn-outline-secondary btn-sm" disabled>1</button>
                                    <button class="btn btn-outline-secondary btn-sm">2</button>
                                    <button class="btn btn-outline-secondary btn-sm">3</button>
                                    <button class="btn btn-outline-secondary btn-sm">4</button>
                                    <button class="btn btn-outline-secondary btn-sm">5</button>
                    
                                    <button class="btn btn-secondary btn-sm">&gt;</button>
                                    
                                </div>
                                <div class="enrollReply1" align="right" style="padding-top: 30px;">
                                    <textarea name="" id="enrollReply1" class="form-control" placeholder="내용을 입력해주세요" style="height: 80px;" maxlength="500"></textarea>
                                    <span id="count1">0</span>/500&nbsp;&nbsp;<button class="btn btn-flat btn-success">등록</button>
                                </div>
                                
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
    
    <script>
    	// 글 삭제 확인용
	    $("#deleteBtn").click(function(){
			if(confirm("정말 삭제하시겠습니까?")) {
				location.href="delete.fn?fno=${ fn.freenoteNo }";
			}
		});

    	// 대댓글 작성창 관련
		$(function(){
	    	// 대댓글 작성창 버튼
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
		
			// 댓글 글자 수 세기(메인댓글)
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
		
			// 댓글 글자 수 세기(서브댓글)
		    $(".reply2Content").keyup(function(){
		        // 현재 요소(textarea)안에 작성된 값의 길이를 알아내기
		        var inputlength = $(this).val().length;
		        $(this).parents(".enrollReply2").children("span[class=count2]").html(inputlength);
		        // $("#count1").html(inputlength);
		    }); 
		});
    </script>
	<jsp:include page="../../common/diaryWidget.jsp"/>
	
	<jsp:include page="../../common/diaryFooter.jsp"/>

</body>
</html>