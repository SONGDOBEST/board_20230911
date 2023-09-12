<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-11
  Time: 오전 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>글 목록 조회</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<h2>글목록</h2>
<div class="container">
    <div id="board-list">
        <table class="table table-bordered">
            <tr>
                <td>글번호</td>
                <td>작성자</td>
                <td>제목</td>
                <td>작성날짜</td>
                <td>조회수</td>
                <td>상세조회</td>
            </tr>
            <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td>${board.boardWriter}</td>
                    <td>${board.boardTitle}</td>
                    <td>${board.createdAt}</td>
                    <td>${board.boardHits}</td>
                    <td>
                        <a class="btn btn-info" onclick="detail_fn('${board.id}')">조회</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
<script>
    const detail_fn = (id) => {
        location.href="/board?id="+id;
    }
</script>
</html>
