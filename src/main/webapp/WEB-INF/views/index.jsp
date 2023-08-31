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
    <title>메인페이지</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!--메뉴 영역-->
<jsp:include page="meru.jsp"/>
<!--본문-->
<div class="container mt-3">
    <h2>신학기 신학생 모집</h2>
    <div class="mt-4 p-5 bg-primary text-white rounded">
        <h1>신입생 여러분을 환영합니다.</h1>
        <p>신학기 신입생을 모집합니다.</p>
    </div>
</div>

<!--footer-->
<jsp:include page="footer.jsp"/>
</body>
</html>