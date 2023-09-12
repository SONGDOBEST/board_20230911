<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-12
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<h2>삭제 페이지</h2>
<input type="password" name="boardPass" id="board-pass">
<a class="btn btn-danger" onclick="board_pass_check(), delete_fn(${board.id})" >삭제</a>

</body>
<script>
    const board_pass_check = () => {
        const pass =document.getElementById("board-pass").value;
        const result = document.getElementById("board-pass-check-result");

        $.ajax({
            type:"post",
            url: "/board/duplicate-check",
            data:{
                boardPass : pass
            },
            success: function(){
                result.innerHTML ="비밀번호가 일치합니다";
                result.style.color = "green";
            },
            error: function(){
                result.innerHTML ="비밀번호가 일치하지 않습니다.";
                result.style.color = "red";
            }
        });
    }
    const delete_fn = (id) =>{
        location.href="/delete?id="+id;
    }
</script>
</html>

