<%--
  Created by IntelliJ IDEA.
  User: myyun
  Date: 2023-03-27
  Time: 오후 10:33
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
    <title>학생 정보 저장 완료</title>
</head>
<body>
<h1>학생 정보 저장 완료</h1>
<%
    // 작성한 값 받아오기
    String number = request.getParameter("id");
    String name = request.getParameter("pw");

    // mariaDB 준비
    Class.forName("org.mariadb.jdbc.Driver");

    // mariaDB 연결
    Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/toy.sh?createDatabaseIfNotExist=true", "root", "root");

    // 쿼리
    PreparedStatement stmt = conn.prepareStatement("INSERT INTO toy.sh values(?,?)"); // ?표현식 : 변수자리
    stmt.setString(1, number);
    stmt.setString(2, name);

    // 쿼리 실행
    stmt.executeUpdate();
    conn.close(); // DB 종료
    stmt.close();

%>
</body>
</html>
