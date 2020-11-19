<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dlog</title>
</head>
<body>

<jsp:include page="../../common/diaryHeader.jsp" />

  <!--**********************************
      Content body start
  ***********************************-->
  <div class="content-body" style="float: left;">
      <div class="row page-titles mx-0">
          <h3 style="color:rgb(94, 94, 94); padding-left: 15px; font-size:17px; font-weight:bolder">다이어리</h3>
      </div>

      <!-- row -->

      <div class="container-fluid">
          <div class="row">
              <div class="col-12">
                  <div class="card" style="width:900px;">
                      <div class="card-body" >
                          <div class="table-responsive">
                              <!-- 검색영역 -->
                              <table align="right">
                                  <tr>
                                      <td width="60">
                                          <select name="" id="" style="height: 30px; border: .1px solid lightgrey; border-radius: 4px;">
                                              <option value="">5줄</option>
                                              <option value="">10줄</option>
                                          </select> 
                                      </td>
                                  </tr>
                              </table>
                              <br>

                              <!-- 목록 -->
                              <table class="table table-hover">
                                  <thead align="center">
                                      <tr>
                                          <th>글번호</th>
                                          <th width="500px">글제목</th>
                                          <th>작성일</th>
                                          <th>&nbsp;&nbsp;</th>
                                      </tr>
                                  </thead>
                                  <tbody align="center">
                                  	  <c:forEach var="d" items="${ list }">
	                                      <tr>
	                                          <th>${ d.diaryNo }</th>
	                                          <td>${ d.diaryTitle }</td>
	                                          <td>${ d.diaryDate }</td>
	                                          <td><a onclick="noticeUpdate(this); event.stopImmediatePropagation();">수정</a>&nbsp;&nbsp;
												  <a onclick="noticeDelete(this); event.stopImmediatePropagation();">삭제</a></td>
	                                      </tr>
                                      </c:forEach>
                                  </tbody>
                              </table>
                              <br>
                              <!-- 페이징 -->
                              <table align="center">
                                  <tr>
                                      <td width="100" align="center"></td>
                                      <td width="600">
                                          <ul class="pagination justify-content-center">
                                          
                                          <c:choose>
                                          	  <c:when test="${ pi.currentpage eq 1} }">
                                              	<li class="page-item disaled"><a class="page-link" href="#">Previous</a></li>
                                              </c:when>
                                              <c:otherwise>
                                              	<li class="page-item"><a class="page-link" href="list.di?currentPage=${ pi.currentPage-1 }">Previous</a></li>
                                              </c:otherwise>
                                           </c:choose>  
                                              
                                              
                                              
                                            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">  
                                              <li class="page-item active"><a class="page-link" href="list.di?currentPAGE=${ P }">${ p }</a></li>
                                         	</c:forEach>
                                              
                                              
                                            <c:choose> 
                                              <c:when test="${ pi.currentPage eq pi.maxPage }">
                                              	<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                                              </c:when>
                                              <c:otherwise>
                                              	<li class="page-item"><a class="page-link" href="list.di?currentPage=${ pi.currentPage+1 }">Next</a></li>
                                               </c:otherwise>
                                            </c:choose> 
                                          </ul>
                                      </td>
                                      <td width="100" align="center">
                                          <button class="btn btn-success">작성</button>
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
	
	<script>
    	
			const diaryUpdate = function(e){
			   var answer = confirm("수정하시겠습니까 ?");
			   if(answer){
			    console.log(e.parentNode)
			   var nno = e.parentNode.parentNode.childNodes[1].textContent;
			   location.href="updateForm.di?dno="+dno;
			    }else{
			      return;
			    }
			    	};
			    		
			const diaryDelete =  function(e){
			    var answer = confirm("삭제하시겠습니까 ?");
			    if(answer){
			       var nno = e.parentNode.parentNode.childNodes[1].textContent;
			           // 삭제 진행
			       location.href="delete.di?dno="+dno;
			     }else{
				return;
			     }
			    };
			    
			$(".tb1>tbody>tr").click(function(){
		    	var nno = $(this).children().eq(0).text();
			 	location.href="detail.di?dno="+ dno;    	
		     });
			
		</script>

</body>
</html>