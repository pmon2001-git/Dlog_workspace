<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dlog</title>
<style>
	.deleteForm{
		margin-top: 70px;
        margin-left:15%;
        border: solid 1px rgb(207, 202, 202);
        padding: 31px;
        width: 450px;
        height: 270px;
        border-radius: 50px;
    }

    .deleteForm p{
        font-size: 14px;
        font-weight: 500;   
     }
</style>
</head>
<body>

<jsp:include page="../common/myPageHeader.jsp" />

<!--**********************************
    Content body start
***********************************-->
<div class="content-body" style="float: left;">
    <div class="row page-titles mx-0">
        <h3 style="color:rgb(94, 94, 94); padding-left: 15px; font-size:17px; font-weight:bolder;">회원탈퇴</h3>
    </div>
    <!-- row -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card" style="width:710px;">
                    <div class="card-body" >
                        
                    <!-- 여기다가 작성 -->
                    <div class="deleteForm">
                        
                        <br>
                        <p align="center">회원탈퇴를 진행하시려면 비밀번호를 입력해주세요!  </p>
                         <form action="delete.me" method="post">
                                    <table align="center"  id="deleteMemForm">
                                     <input type="hidden" name="userId" class="form-control" value="${loginUser.memberId }">
                                        <tr>
                                            <td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 비밀번호 : &nbsp;&nbsp;&nbsp; </td>
                                            <td><br><input type="password" name="userPwd" maxlength="15" class="form-control" style="height:30px;" placeholder="password"required></td>
                                            <td></td>
                                        </tr>
                                        <tr align="center">
                                            <td colspan="3">
                                               <br><br>
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <input align="center" type="button" onclick="return validatePwd();"class="btn btn-success" id="deleteMemBtn" data-toggle="modal" data-target="#deleteForm" value="탈퇴하기">
                                              </td>
                                          </tr>
                                      </table>
                             </form>
                
                      </div>   
                     <br><br><br><br><br><br>
                    <!-- 회원탈퇴 버튼 클릭시 보여질 Modal -->
                    <div class="modal" id="deleteForm">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            
                                <!-- Modal Header -->
                                <div class="modal-header">
                                <h4 class="modal-title">회원탈퇴</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                
                                <!-- Modal body -->
                                <div class="modal-body" align="center">
                                
                                    <b>
                                                    탈퇴 후 복구가 불가능합니다. <br>   
                                                    정말로 탈퇴 하시겠습니까?
                                    </b>

                                    <form action="deleteMember.me" method="post">
                                      	  비밀번호 : 
                                        <input type="password" name="userPwd" required><!-- 사용자가 입력한 평문 그대로의 비밀번호가 넘어감 ,,값을 입력안하면 요청안돼-->
                                        
                                        <button type="submit" class="btn btn-danger btn-sm" >탈퇴</button>
                                        <button onclick="history.back();" class="btn btn-dark btn-sm">취소</button>
                                    
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <script>

                        function validatePwd(){
                            if($("input[name=userPwd]").val() == ${loginUser.memberPwd}){
                            }else{
                                alert("비밀번호가 일치하지 않습니다.");
                                $("input[name=userPwd]").focus();
                                return false;
                            }
                        }
                        
                        </script>

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
       
</div>
<!--**********************************
    Main wrapper end
***********************************-->

	<jsp:include page="../common/myPageFooter.jsp" />
   
   
</body>
</html>