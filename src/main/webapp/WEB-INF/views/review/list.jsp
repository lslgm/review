<!--
    파일명 :
    기 능 : 
    직성일 :
    작성자 :
    수정사항 :
    FixMe :
    ToDo :
-->
<%@ page contentType="text/html; charset=UTF-8"  language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Document</title>
</head>
<body>

<jsp:include page="../meru.jsp"/>
<h2>수강 평가 목록</h2>
<form action="/review/list">
    <div class="alert alert-info">
        <div class="row"><!--1행을 12칸-->
            <div class="col-sm-1">번 호</div>
            <div class="col-sm-1">학생 이름</div>
            <div class="col-sm-2">제 목</div>
            <div class="col-sm-5">내 용</div>
            <div class="col-sm-1">평 점</div>
        </div>
    </div>

    <c:forEach var="review" items="${reviewlist}">
    <a href="/review/update?rno=${review.rno}">
        <div class="alert alert-success"><!--알림창-->
            <div class="row"><!--1행을 12칸-->
                <div class="col-sm-1">${review.rno}</div>
                <div class="col-sm-1">${review.sname}</div>
                <div class="col-sm-2">${review.rsubject}</div>
                <div class="col-sm-5">${review.rcontent}</div>
                <div class="col-sm-1">${review.rgrade}</div>
            </div>
            <!--<strong>Success!</strong>-->
        </div>

        </c:forEach>
    </a>
    <div class="container mt-3">
        <button  type="button" class="btn btn-warning" onclick="location.href='/review/insert'">평가 등록</button>
    </div>
</form>
</body>
</html>