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
<!--Table 많은 정보를 제공할때, Alerts 각 정보별로 구별해서 처리 , List groups 공지사할(단일내용)
card 이미지와 내용을 함께처리 , toast 팝업정보제공
-->
<!--목록은 foreach등 반복문 사용-->
<h2>학생 명단</h2>
<form action="/student/list">
        <div class="alert alert-info">
            <div class="row"><!--1행을 12칸-->
                <div class="col-sm-1">학번</div>
                <div class="col-sm-1">학생명</div>
                <div class="col-sm-1">학 과</div>
                <div class="col-sm-1">주 소</div>
                <div class="col-sm-1">전화 번호</div>
            </div>
        </div>

        <c:forEach var="student" items="${studentlist}">
    <a href="/student/update?sno=${student.sno}">
    <div class="alert alert-success"><!--알림창-->
        <div class="row"><!--1행을 12칸-->
            <div class="col-sm-1">${student.sno}</div>
            <div class="col-sm-1">${student.sname}</div>
            <div class="col-sm-1">${student.sclass}</div>
            <div class="col-sm-1">${student.saddress}</div>
            <div class="col-sm-1">${student.sphone}</div>
        </div>
        <!--<strong>Success!</strong>-->
    </div>

    </c:forEach>
    </a>
    <div class="container mt-3">
        <button  type="button" class="btn btn-warning" onclick="location.href='/student/insert'">학생 등록</button>
    </div>
</form>
</body>
</html>