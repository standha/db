<%--
  Created by IntelliJ IDEA.
  User: myyun
  Date: 2023-03-27
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>학생정보</title>
</head>
<body>
<form action="insert1.jsp" method="post">
    <table>
        <tr>
            <td>ID :</td>
            <td><input type="test" name="id"></td>
        </tr>
        <tr>
            <td>Password :</td>
            <td><input type="password" name="pw"></td>
        </tr>
    </table>
    <input type="submit" value="Insert">
</form>
</body>
</html>
