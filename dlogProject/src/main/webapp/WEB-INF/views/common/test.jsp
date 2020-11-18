<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Dlog</title>
<!-- Favicon icon -->
<link rel="icon" type="resources/image/png" sizes="16x16" href="resources/images/DlogLogo-title.png">

</head>
<body>

	<jsp:include page="diaryHeader.jsp"/>
	
	<!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body" style="float: left;">
        <div class="row page-titles mx-0">
            <h3 style="color:rgb(94, 94, 94); padding-left: 15px; ">메뉴이름</h3>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card" style="width:900px;">
                        <div class="card-body" >
                            
                        <!-- 여기다가 작성 -->
                        
                        
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
	
	<jsp:include page="diaryWidget.jsp"/>
	
	<jsp:include page="diaryFooter.jsp"/>
	
</body>
</html>