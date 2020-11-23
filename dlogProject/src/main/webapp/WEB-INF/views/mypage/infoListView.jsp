<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .infoSelectForm{
      margin-top: 50px;
      margin-left:12%;
      border: solid 1px rgb(207, 202, 202);
      padding: 31px;
      width: 500px;
      height: 500px;
      border-radius: 50px;
  }

  .infoSelectForm p{
      font-size: 14px;
     
  }
  .btn-success{
    
      border-radius: 10px;
      font-size: 12px;
  }
  #infoSelectTable{
      margin: auto;
      padding: 15px;
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
             <h3 style="color:rgb(94, 94, 94); padding-left: 15px; font-size:17px; font-weight:bolder;">개인정보 조회</h3>
         </div>
         <!-- row -->

         <div class="container-fluid">
             <div class="row">
                 <div class="col-12">
                     <div class="card" style="width:710px;">
                         <div class="card-body" >
                             
                         <!-- 여기다가 작성 -->
                         <div class="infoSelectForm" align="center">
                         
                             <table class="infoSelectTable" >  
                                     <div class="card-body">
                                         <div class="text-center">
                                             <img alt="" class="rounded-circle mt-4" src="images/default-profile-pic.jpg" width="90px">
                                         </div>
                                     </div>
                                 <tr>
                                    <td> 이름 &nbsp; : </td>
                                    <td>김말순</td>
                                 </tr>
                                  <tr>
                                      <td></td>
                                      <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                     <td> 아이디 &nbsp; : </td>
                                     <td >user01</td>
                                   
                                 </tr>
                                 <tr>
                                     <td></td>
                                     <td>&nbsp;</td>
                                 </tr>
                                  <tr>
                                    <td> 별명 &nbsp;: </td>
                                    <td >말순</td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td> 이메일 &nbsp; : </td>
                                      <td >aaa@naver.com</td>
                                  </tr>
                                  <tr>
                                      <td></td>
                                      <td style="font-size: 12px;"class="form-text text-muted">&nbsp;</td>
                                      
                                  </tr>
                                  <tr>
                                    <td>전화번호 &nbsp; :</td>
                                    <td>&nbsp;010-1111-2222</td>
                                 </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                 </tr>
                                 
                              </table>
                              <br>
                             <input type="submit" onclick="return validate();"  type="submit" id="nextBtn" class="btn btn-success" value="수정"></input>
                             
                             </div>
                             <br><br>
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
   
</body>
</html>