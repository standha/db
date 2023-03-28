<%--
  Created by IntelliJ IDEA.
  User: myyun
  Date: 2023-03-28
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제완료</title>
</head>

<body>
<h1>학생 정보 삭제 완료</h1>
<%
    //값 받아오기
    String number = request.getParameter("did");
    String name = request.getParameter("dpw");

    // mariaDB 준비
    Class.forName("org.mariadb.jdbc.Driver");

    // mariaDB 연결
    Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/toy.sh?createDatabaseIfNotExist=true", "root", "root");

    // 쿼리
    PreparedStatement pstmt = conn.prepareStatement("delete from toy.sh where id=? and pw=?"); // ?표현식 : 변수자리
    pstmt.setString(1, number);
    pstmt.setString(2, name);

    // 쿼리 실행(삭제)
    pstmt.executeUpdate();
    conn.close(); // DB 종료
    pstmt.close();

%>

<form action="delete1.jsp" method="post">
    <input type="submit" value="돌아가기">

</form>
</body>
</html>
