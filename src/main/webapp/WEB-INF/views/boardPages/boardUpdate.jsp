<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="section">
    <form action="/board/update" method="post" name="updateForm">
        게시글 작성자: <input type="text" name="boardWriter" readonly value="${board.boardWriter}"> <br>
        게시글 비밀번호: <input type="text" id="board-pass" name="boardPass" readonly placeholder="비밀번호입력하세요"> <br>
        게시글 제목: <input type="password" name="boardTitle"  value="${board.boardTitle}"> <br>
        게시글 내용: <textarea type="text" name="boardContents" cols="30" rows="10">${board.boardContents}</textarea> <br>
        파일 첨부: <input type="file" name="fileAttached"> <br>
        <input type="button" value="수정하기" onclick="board_update()">
    </form>
</div>
</body>
<script>
    const board_update = () =>{
        const pass = '${board.boardPass}';
        const inputPass = document.getElementById("board-pass").value;
        if(pass == inputPass){
            document.updateForm.submit();
        }else{
        alert("비밀번호가 틀렸습니다.")
        }
    }
</script>
</html>
