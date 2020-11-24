<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dlog</title>
 <style>
        .introSelectForm{ 
            height:400px;
            width:100%;
          }
        #content{
            margin-left:20px;
            border:0px;
            padding:20px;
         }
         #line{
            border:gray 2px dashed;
            
         }
         #btn{
             margin-left:90%;
         }
    </style>
</head>
<body>

<jsp:include page="../common/diaryHeader.jsp" />


 <!--**********************************
     Content body start
 ***********************************-->
 <div class="content-body" style="float: left;">
     <div class="row page-titles mx-0">
         <h3 style="color:rgb(94, 94, 94); padding-left:15px; font-size:17px;"><b>소개글</b></h3>
     </div>
     <!-- row -->

     <div class="container-fluid">
         <div class="row">
             <div class="col-12">
                 <div class="card" style="width:730px;">
                     <div class="card-body" >
                         <div class="table-responsive">
                             <!--시작-->
                                 <div class="introSelect">
                                     <div class="introSelectForm">
                                          <table>
                                          	<tr>
                                                 <th style="font-size:30px;">&nbsp;</th>
                                             
                                                 <th style="font-size:30px; font-weight: bolder;">&nbsp;&nbsp; ${ loginUser.introductionTitle } </th>
                                             
                                                 <td><hr id="line"></td>
                                            
                                                 <td id="content">${ loginUser.introductionContent } </td>
                                             </tr>
                                         </table>
                                     </div>
                                     <div id="btn">
                                         <button type="button" onclick="location.href='introUpdateForm.it'" class="btn btn-success btn-sm">수정하기</button>
                                     </div>
                             <br>
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
 
    <jsp:include page="../common/diaryWidget.jsp" />
	<jsp:include page="../common/diaryFooter.jsp" />
	
</body>
</html>