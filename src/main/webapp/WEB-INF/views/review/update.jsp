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
<h2>평가 내용 수정</h2>
<form action="/review/update" method="post">
    <div class="container mt-3">
        <div class="mb-3 mt-3">
            <label for="rno">번 호</label>
            <input type="number" class="form-control" id="rno"  name="rno" value="${review.rno}" readonly>
        </div>
        <div class="mb-3 mt-3">
            <label for="sno">학 번</label>
            <input type="number" class="form-control" id="sno"  name="sno" value="${review.sno}">
        </div>

        <div class="mb-3">
            <label for="rsubject">제 목</label>
            <input type="text" class="form-control" id="rsubject"  name="rsubject" value="${review.rsubject}">
        </div>

        <div class="mb-3 mt-3">
            <label for="rcontent">내 용</label>
            <textarea class="form-control" rows="5" id="rcontent" name="rcontent">${review.rcontent}</textarea>
        </div>
        <div class="mb-3 mt-3">
            <label for="rgrade">평 점</label>
            <select class="form-select" id="rgrade"  name="rgrade">
                <option value="1" <c:if test="${review.rgrade eq '1'}">selected</c:if>>1</option>
                <option value="2" <c:if test="${review.rgrade eq '2'}">selected</c:if>>2</option>
                <option value="3" <c:if test="${review.rgrade eq '3'}">selected</c:if>>3</option>
                <option value="4" <c:if test="${review.rgrade eq '4'}">selected</c:if>>4</option>
                <option value="5" <c:if test="${review.rgrade eq '5'}">selected</c:if>>5</option>
            </select>
        </div>


        <div class="pagination justify-content-center">
            <input type="submit" value="등록" class="btn btn-primary"/>
            <input type="reset" value="다시입력" class="btn btn-info"/>
            <input type="button" value="입력취소" class="btn btn-secondary" onclick="location.href='/review/list'"/>
            <input type="button" value="삭제" class="btn btn-primary" onclick="location.href='/review/delete?rno=${review.rno}'"/>
        </div>

    </div>

</form>
</body>
</html>