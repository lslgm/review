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
<h2>학생 정보 수정</h2>
<form action="/student/update" method="post">
    <div class="container mt-3">
        <div class="mb-3 mt-3">
            <label for="sno">학 번</label>
            <input type="number" class="form-control" id="sno"  name="sno" value="${student.sno}" readonly>
        </div>

        <div class="mb-3">
            <label for="sname">학생명 </label>
            <input type="text" class="form-control" id="sname"  name="sname" value="${student.sname}">
        </div>

        <div class="mb-3 mt-3">
            <label for="sclass">학 과</label>
            <select class="form-select" id="sclass"  name="sclass" >
                <option value="컴퓨터공학과" <c:if test="${student.sclass eq '컴퓨터공학'}">selected</c:if>>컴퓨터공학과</option>
                <option value="전자공학과" <c:if test="${student.sclass eq '전자공학과'}">selected</c:if>>전자공학과</option>
                <option value="실내건축디자인학과" <c:if test="${student.sclass eq '실내건축디자인학과'}">selected</c:if>>실내건축디자인학과</option>
                <option value="토목과" <c:if test="${student.sclass eq '토목과'}">selected</c:if>>토목과</option>
                <option value="정보통신과" <c:if test="${student.sclass eq '정보통신과'}">selected</c:if>>정보통신과</option>
                <option value="컴퓨터정보보안과"<c:if test="${student.sclass eq '컴퓨터정보보안과'}">selected</c:if>>컴퓨터정보보안과</option>
                <option value="간호학과" <c:if test="${student.sclass eq '간호학과'}">selected</c:if>>간호학과</option>
                <option value="호텔조리과" <c:if test="${student.sclass eq '호텔조리과'}">selected</c:if>>호텔조리과</option>
                <option value="항공과" <c:if test="${student.sclass eq '항공과'}">selected</c:if>>항공과</option>
            </select>
        </div>

        <div class="mb-3 mt-3">
            <label for="saddress">주 소</label>
            <input type="text" class="form-control" id="saddress"  name="saddress" value="${student.saddress}">
        </div>
        <div class="mb-3 mt-3">
            <label for="sphone">전화번호</label>
            <input type="text" class="form-control" id="sphone"  name="sphone" value="${student.sphone}">
        </div>


        <div class="pagination justify-content-center">
            <input type="submit" value="등록" class="btn btn-primary"/>
            <input type="reset" value="다시입력" class="btn btn-primary"/>
            <input type="button" value="입력취소" class="btn btn-primary" onclick="location.href='/student/list'"/>
            <input type="button" value="삭제" class="btn btn-primary" onclick="location.href='/student/delete?sno=${student.sno}'"/>
        </div>

    </div>

</form>
</body>
</html>