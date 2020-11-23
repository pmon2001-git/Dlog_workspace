<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .infoUpdateForm{
    margin-top: 50px;
    margin-left:12%;
    border: solid 1px rgb(207, 202, 202);
    padding: 31px;
    width: 500px;
    height: 600px;
    border-radius: 50px;
	}

	.infoUpdateForm p{
    font-size: 14px;
    font-weight: 500;   
	}
	.btn-success{
  
    border-radius: 10px;
    font-size: 12px;
	}

	#infoUpdateFormTable{
    margin: auto;
    box-sizing: border-box;
    padding: 15px;
	}
	input::placeholder { 
    color: #ccc; 
    font-size:10px;

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
             <h3 style="color:rgb(94, 94, 94); padding-left: 15px; font-size:17px; font-weight:bolder;">개인정보 수정</h3>
         </div>
         <!-- row -->

         <div class="container-fluid">
             <div class="row">
                 <div class="col-12">
                     <div class="card" style="width:710px;">
                         <div class="card-body" >
                             
                         <!-- 여기다가 작성 -->
                         <div class="infoUpdateForm" align="center">
                               <form action="infoUpdate.me" id="infoUpdateForm" method="post" enctype="multipart/form-data">
                                   
                                     <table id="infoUpdateFormTable">
                                         <div class="card-body">
                                             <div class="text-center">
                                                 <img alt="" class="rounded-circle mt-4" src="images/default-profile-pic.jpg" width="90px">
                                             </div>
                                         </div>
                                         <td> 이름 : </td>
                                         <td colspan="2" readonly>홍길동</td>
                                      </tr>
                                      <tr>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                     </tr>
                                       <tr>
                                         <td> 아이디 : </td>
                                         <td colspan="2" readonly>user01</td>
                                       
                                      </tr>
                                     
                                       <tr>
                                           <td>&nbsp;</td>
                                           <td>&nbsp;</td>
                                       </tr>
                                       <tr>
                                         <td> 별명 : </td>
                                         <td colspan="2"><input style="width:200px;" type="text"  name="userName" id="userName" maxlength="12" placeholder="&nbsp;&nbsp;3~10자 (한글, 영문자, 숫자)" required value=""></td>
                                         </tr>
                                       <tr>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                      </tr>
                                     
                                        <tr>
                                           <td> 이메일 : </td>
                                           <td colspan="2"><input style="width:200px;" type="email" name="email" placeholder="&nbsp;&nbsp;이메일을 입력해주세요." required value=""></td>
                                       </tr>
                                       <tr>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                       </tr>
                                       <tr>
                                         <td>전화번호 :</td> 
                                         <td><input style="width:200px;" type="text" onKeyup="" maxlength="13" style="text-align:center;" placeholder="&nbsp;&nbsp;전화번호를 입력해주세요." required></td>
                                         <td>&nbsp;&nbsp;<button type="button" onclick="" class="btn btn-outline-success btn-sm">인증</button></td>
                                       </tr>
                                       <tr>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                      </tr>
                                      <tr>
                                         <td class="profileimg"> 프로필 이미지 :  &nbsp;&nbsp;</td>
                                         
                                         <td colspan="2">&nbsp;&nbsp;<input type="file" name="upfile" class="form-control-e" id="exampleFormControlFile2" value=""></td>
                                     </tr>
                                    </table>
                                   <br><br>
                                 <button type="submit"id="infoUpdateBtn" data-toggle="modal" data-target="#exampleModal" class="btn btn-success">확인</button>
                                  
                                </form>
                               </div>
                               <br><br><br>
                           
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
     
 </div>
 <!--**********************************
     Main wrapper end
 ***********************************-->
 
 <jsp:include page="../common/myPageFooter.jsp" />
 
<script>

function validate(){
   // 유효성 검사 :  이메일, 비밀번호일치, 닉네임
   var userName = document.getElementById("userName");
   var userPwd = document.getElementById("userPwd");
   var userPwd2 = document.getElementById("checkPwd");
   var email = document.getElementById("userEmail");
   
  
   var pwd1 = /^[a-z\d!@#$%^&*]{5,15}$/i;  //특수문자(!@#$%^&*)
   var name = /^[가-힣a-z\d]{3,11}$/;
   var email = /^[0-9a-z]([-_.]?[0-9a-z])*@[0-9a-z]([-_.]?[0-9a-z])*.[a-z]{2,3}$/i;

   if(!name.test(userName.value)){
       alert("닉네임을 정확하게 기입해주세요.");
       userName.value ="";
       userName.focus(); 

       return false; 
   }

   if(!pwd1.test(userPwd.value)){
       alert("유효한 비밀번호를 입력하세요.");

       userPwd.value ="";
       userPwd.focus(); 
       
       return false; 
   }
   
   
   if(userPwd.value != userPwd2.value){
       alert("동일한 비밀번호를 입력하세요!");
       userPwd2.value = "";
       userPwd2.focus(); 

       return false; 
   }
   
   if(!email.test(userEmail.value)){
  	 alert("이메일을 다시 입력해주세요");
 	     email.value = "";
 	     email.focus ="";
 		  return false; 
   }
   
 }


</script>
</body>
</html>