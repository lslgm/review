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
<h1></h1>
<jsp:include page="../meru.jsp"/>
<h2>평가 결과지  내용</h2>
<form action="/review/list">
    <div class="alert alert-info">
        <div class="row"><!--1행을 12칸-->
            <div class="col-sm-1">학 번</div>
            <div class="col-sm-1">학생 이름</div>
            <div class="col-sm-1">전화 번호</div>
            <div class="col-sm-2">제 목</div>
            <div class="col-sm-5">내 용</div>
            <div class="col-sm-1">평 점</div>
        </div>
    </div>

    <c:forEach var="result" items="${result}">
        <div class="alert alert-success"><!--알림창-->
            <div class="row"><!--1행을 12칸-->
                <div class="col-sm-1">${result.sno}</div>
                <div class="col-sm-1">${result.sname}</div>
                <div class="col-sm-1">${result.sphone}</div>
                <div class="col-sm-2">${result.rsubject}</div>
                <div class="col-sm-5">${result.rcontent}</div>
                <div class="col-sm-1">${result.rgrade}</div>
            </div>

        </div>
        </c:forEach>
    <div class="pagination justify-content-center">
        <input type="button" value="다시 검색" class="btn btn-primary" onclick="location.href='/result/listform'"/>
        <input type="button" value="메인화면으로" class="btn btn-primary" onclick="location.href='/'"/>
    </div>
</body>
</html>