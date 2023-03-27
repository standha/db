<%--
  Created by IntelliJ IDEA.
  User: myyun
  Date: 2023-03-27
  Time: 오후 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  Class.forName("org.mariadb.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/sh?createDatabaseIfNotExist=true","root","root");

  PreparedStatement pstmt = null;
  String query = "INSERT INTO sh VALUES (?,?)";
  if (conn != null) {
    try {
      pstmt = conn.prepareStatement(query);
      pstmt.setString(1, request.getParameter("id"));
      pstmt.setString(2, request.getParameter("pw"));
      pstmt.executeUpdate();
      conn.close();
      pstmt.close();
%>

<script>
  alert("Insert 성공");
  location.href='in.jsp';
</script>
<%
  } catch (SQLException e) {
    e.printStackTrace();
  }

} else {
%>
<script>
  alert("Database 연결 실패");
  history.back();
</script>
<%

  }
%>