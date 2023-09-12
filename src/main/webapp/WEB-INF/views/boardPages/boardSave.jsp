<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-11
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시글 작성</title>
</head>
<body>
<form action="/board/save" method="post">
    게시글 작성자: <input type="text" name="boardWriter"> <br>
    게시글 비밀번호: <input type="text" name="boardPass"> <br>
    게시글 제목: <input type="password" name="boardTitle"> <br>
    게시글 내용: <input type="text" name="boardContents"> <br>
    파일 첨부: <input type="file" name="fileAttached"> <br>
    <input type="submit" value="등록하기" onclick="save_fn()">
</form>
</body>
<script>
    const save_fn = () =>{
        const attach =document.getElementsByName("fileAttached");
        if (attach != null){

        }
    }
</script>
</html>
