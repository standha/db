<%--
  Created by IntelliJ IDEA.
  User: myyun
  Date: 2023-03-24
  Time: 오후 5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
import java.sql.Connection;

import java.sql.DriverManager;



import org.junit.Test;







@Test

public void testConnection() throws Exception{

Class.forName(DRIVER);

try(Connection con = DriverManager.getConnection(URL, USER, PW)){

System.out.println(con);

}catch(Exception e){

e.printStackTrace();

}

}

}
