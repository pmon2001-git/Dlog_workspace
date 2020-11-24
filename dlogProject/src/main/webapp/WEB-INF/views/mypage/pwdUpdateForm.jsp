<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dlog</title>
<style>
    .updatePwdForm{
        margin-top: 70px;
        margin-left:12%;
        border: solid 1px rgb(207, 202, 202);
        padding: 31px;
        width: 500px;
        height: 400px;
        border-radius: 50px;
    }

    .updatePwdForm p{
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
        <h3 style="color:rgb(94, 94, 94); padding-left:15px; font-size:17px;"><b>비밀번호 변경</b></h3>
    </div>
    <!-- row -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card" style="width:710px;">
                    <div class="card-body" >
                        
                    <!-- 여기다가 작성 -->
                    <div class="updatePwdForm" align="center">
                        
                        <br>
                        <p align="center"><b>비밀번호는 대문자, 소문자, 숫자, 특수문자 총 2종류 이상을 조합하여<br>
                             최소 10자리 이상만 사용할 수 있습니다.</b></p>
                        <!-- 2_1. 입력을 받는 input요소들이 위치할 영역 -->
                             
                            <form action="updatePwd.me" method="post">
                                    <!-- 3_1. ID/PWD input요소가 들어갈 div -->
                                   
                                    <table align="center"  id="updatePwdForm">
                                     <input type="hidden" name="memberId" class="form-control" value="">
                                        <tr>
                                            <td style="font-size:12px;"><br>기존 비밀번호 : &nbsp;&nbsp;&nbsp; </td>
                                            <td><br><input type="password" name="memberPwd" maxlength="18" class="form-control" style="height:10px;" placeholder="password"required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="font-size:12px;"><br>새 비밀번호 : &nbsp;&nbsp;&nbsp; </td>
                                            <td><br><input type="password" name="checkPwd" maxlength="18" class="form-control" style="height:10px;" placeholder="password" required></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="font-size:12px;"><br>비밀번호 확인 : &nbsp;&nbsp;&nbsp; </td>
                                            <td><br><input type="password" name="checkPassPwd" maxlength="18" class="form-control" style="height:10px;" placeholder="password" required></td>
                                            <td></td>
                                        </tr>
                                        <tr align="center">
                                            <td colspan="3">
                                               <br><br>
                                              <input align="center" type="button" onclick="return validate();"class="btn btn-success" id="updatePwdBtn" data-toggle="modal" data-target="#pwdUpdateForm" value="변경">
                                              </td>
                                          </tr>
                                      </table>
                             </form>
                
                      </div>   
                     
                      <br><br><br><br><br>
                      
                      <script>
                      
                      function validate(){
                    	   // 유효성 검사 :  비밀번호일치
                    	   var memberPwd = document.getElementById("memberPwd");
                    	   var memberPwd2 = document.getElementById("checkPwd");
                    	   var memberPwd3 = document.getElementById("checkPassPwd");
                    	   
                    	  
                    	   var pwd1 = /^[a-z\d!@#$%^&*]{5,15}$/i;  //특수문자(!@#$%^&*)
           
                    	 

                    	   if(!pwd1.test(userPwd.value)){
                    	       alert("유효한 비밀번호를 입력하세요.");

                    	       memberPwd.value ="";
                    	       memberPwd.focus(); 
                    	       
                    	       return false; 
                    	   }
                    	   
                    	   
                    	   if(userPwd.value != userPwd2.value){
                    	       alert("동일한 비밀번호를 입력하세요!");
                    	       memberPwd2.value = "";
                    	       memberPwd2.focus(); 

                    	       return false; 
                    	   }
                    	   
                    	   if(userPwd.value != userPwd3.value){
                    	       alert("비밀번호를 다시 확인해주시기 바랍니다.");
                    	       memberPwd3.value = "";
                    	       memberPwd3.focus(); 

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