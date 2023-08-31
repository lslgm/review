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
<h2>평가 결과지</h2>

<form action="/result/resultlist" method="get" >
    <div class="container mt-3">
        <div class="mb-3 mt-3">
            <label for="sno">학 번</label>
            <input type="number" class="form-control" id="sno"  name="sno">
        </div>

        <div class="pagination justify-content-center">
            <input type="submit" value="조회" class="btn btn-primary"/>
            <input type="button" value="취소" class="btn btn-primary" onclick="location.href='/'"/>
        </div>
    </div>
</form>
</body>
</html>