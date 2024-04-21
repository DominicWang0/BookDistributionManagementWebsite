<%--
  Created by IntelliJ IDEA.
  User: DominicWang
  Date: 2024/4/21
  Time: 08:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="beans.User"/>
<jsp:setProperty name="user" property="*"/>
<%
    int result = user.addUser();
    if (result != 1) {
%>
<script>window.alert("Fail to Sing Up !");</script>
<%
        response.setHeader("Refresh", "1;url=signIn.html");
    } else {
        response.setHeader("Refresh", "1;url=mainPage.jsp");
    }
%>
