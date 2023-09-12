<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="section">
    <table>
        <tr>
            <th>id</th>
            <td>${board.id}</td>
        <tr>
            <th>writer</th>
            <td>${board.boardWriter}</td>
        </tr>
        <tr>
            <th>date</th>
            <td>${board.createdAt}</td>
        </tr>
        <tr>
            <th>hits</th>
            <td>${board.boardHits}</td>
        </tr>
        <tr>
            <th>title</th>
            <td>${board.boardTitle}</td>
        </tr>
        <tr>
            <th>contents</th>
            <td>${board.boardContents}</td>
        </tr>
    </table>
    <button onclick="board_list()">목록</button>
    <button onclick="board_update(${board.id})">수정</button>
    <button onclick="board_delete()">삭제</button>

    <div id="pass-check" style="display: none;">
        <input type="text" id="board-pass" placeholder="비밀번호를 입력하세요.">
        <input type="button" onclick="pass_check()" value="확인">
    </div>
</div>
</body>
<script>
    const board_list = () => {
        location.href="/board/"
    }
    const board_update = (id) => {
        location.href="/board/update?id="+id;
    }
    const board_delete = () => {
        const passArea = document.getElementById("pass-check");
        passArea.style.display = "block";
    }
    const pass_check = () =>{
        const inputPass=document.getElementById("board-pass").value;
        const pass = '${board.boardPass}'
        if(pass == inputPass){
            location.href="/board/delete?id="+id;
        }else{
            alert("비밀번호가 일치하지 않습니다!");
        }
    }
</script>
</html>