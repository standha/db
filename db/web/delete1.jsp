<%--
  Created by IntelliJ IDEA.
  User: myyun
  Date: 2023-03-28
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="db delete.jsp" method="post">
    <table>
        <tr>
            <td>삭제할 ID :</td>
            <td><input type="test" name="did"></td>
        </tr>
        <tr>
            <td>삭제할 Password :</td>
            <td><input type="password" name="dpw"></td>
        </tr>
    </table>
    <input type="submit" value="Delete">
</form>
</body>
</html>
