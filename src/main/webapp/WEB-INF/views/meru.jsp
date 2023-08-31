
<%@ page contentType="text/html; charset=UTF-8"  language="java" %>
<h1>부천 대학교</h1>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">부천대학교</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">학생 관리</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/student/list">학생 명단</a></li>
                        <li><a class="dropdown-item" href="/student/insert">학생 등록</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">수강 평가 관리</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/review/list">수강 평가 목록</a></li>
                        <li><a class="dropdown-item" href="/review/insert">수강 평가 등록</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/result/listform">평가 결과지</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

