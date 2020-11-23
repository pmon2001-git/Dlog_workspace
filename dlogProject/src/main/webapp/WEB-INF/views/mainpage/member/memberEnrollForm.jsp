<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dlog</title>
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="resources/images/webImage.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>

        body{
            background-color: #84c8b9;
            height: 100%;
        }

        .header img{
            width: 170px;
            margin: 50px;
            margin-bottom: 0px;
        }

        .body{
            background-color: white;
            width: 500px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            border-radius: 20px;
        }

        .content{
            padding: 30px;
        }

        .content form #enrollMember{
            background-color: #84c8b9;
            color: white;
            width: 100%;
        }

        .content form #enrollMember:hover{
            background-color:#79b6a9;
        }

        .content p{
            margin-top: 5px;
            margin-bottom: 0px;
            font-size: 13px;
        }

        .content p a{
            color: #84c8b9;
            font-weight: bold;
            font-size: 14px;
        }

        .footer{
            padding-top: 60px;
            padding-bottom: 5px;
            color: white;
        }

        /* 움직이는 벌레 */

        #bug1{
            width: 60px;
            transform: rotate(150deg);
        }

        #bug2{
            width: 60px;
            transform: rotate(-10deg);
        }

        #bug1 {
            position: relative;
            animation-name: bug1;
            animation-duration: 60s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
        }
 
        @keyframes bug1 {
        0%   {left: 100px; top:40px;}
        100%  {left: 700px; top: -15px;}
        }

        #bug2 {
            position: relative;
            animation-name: bug2;
            animation-duration: 80s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
        }
 
        @keyframes bug2 {
        0%   {left: 900px; top:-90px;}
        100%  {left: 0px; top:10px;}
        }


    </style>
</head>
<body>
	
	<div class="outer">

        <div class="header" align="center">
            <a href="mainpage.me"><img src="resources/images/mainLogo.png"></a>
        </div>

        <img id="bug2" src="resources/images/bug.png">

        <div class="body">

            <div class="content">

                <form action="">
                    <div class="form-group">
                        <label for="userId">아이디</label> <br>
                        <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력하세요" required style="width: 77%; float: left; margin-right: 10px;">
                        <a href="" class="btn btn-secondary">중복확인</a>
                    </div>
                    <div class="form-group">
                        <label for="userPwd">비밀번호</label>
                        <input type="password" class="form-control" id="userPwd" name="userPwd" required placeholder="비밀번호를 입력하세요">
                        <p style="color: red;">8~10이상 영문 대소문자, 숫자, 특수문자 포함</p>
                    </div>
                    <div class="form-group">
                        <label for="checkPwd">비밀번호 확인</label>
                        <input type="password" class="form-control" id="checkPwd" name="checkPwd" required placeholder="비밀번호를 입력하세요">
                    </div>
                    <div class="form-group">
                        <label for="userName">이름</label>
                        <input type="text" class="form-control" id="userName" name="userName" required placeholder="이름를 입력하세요">
                    </div>
                    <div class="form-group">
                        <label for="nickname">별명</label><br>
                        <input type="text" class="form-control" id="nickname" name="nickname" placeholder="별명을 입력하세요" style="width: 77%; float: left; margin-right: 10px;">
                        <a href="" class="btn btn-secondary">중복확인</a>
                    </div>
                    <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" class="form-control" id="email" name="email" required placeholder="이메일를 입력하세요">
                    </div>
                    <div class="form-group">
                        <label for="phone">전화번호</label><br>
                        <input type="text" class="form-control" id="phone" name="phone" required placeholder="전화번호를 입력하세요" style="width: 77%; float: left; margin-right: 10px;">
                        <a href="" class="btn btn-secondary">인증하기</a>
                    </div>
                    <div class="form-group">
                        <label for="phoneCheck">인증번호 입력</label><br>
                        <input type="text" class="form-control" id="phoneCheck" name="phoneCheck" required placeholder="인증번호를 입력하세요" style="width: 77%; float: left; margin-right: 10px;">
                        <a href="" class="btn btn-secondary">인증확인</a>
                    </div>
                      <button id="enrollMember" type="submit" class="btn">회원가입</button>
                </form>

                <p>계정이 있습니까? <a href="loginForm.me">로그인</a>하세요</p>

            </div>

        </div>

        <img id="bug1" src="resources/images/bug.png">

        <div class="footer" align="center">

            <p>Copyright &copy; Designed & Developed by Dlog 2020</p>
            
        </div>

    </div>
	
</body>
</html>