<%@ page import="java.util.HashMap" %>
<%@ page import="sun.rmi.runtime.Log" %>
<%@ page import="static java.awt.SystemColor.window" %>
<%@ page import="beans.DatabaseUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: DominicWang
  Date: 2024/4/19
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page pageEncoding="utf-8" %>
<jsp:useBean id="user" class="beans.User"/>
<jsp:setProperty name="user" property="*"/>
<%
    HashMap userInfo = (HashMap) user.getUser();
    String requestUserEmail = request.getParameter("userEmail");
    String requestUserPassword = request.getParameter("userPassword");

    int databaseUserId = 0;
    String databaseUserName = null, databaseUserEmail = null, databaseUserPassword = null;

    if (userInfo != null) {
        databaseUserName = userInfo.get("userName").toString();
        databaseUserEmail = userInfo.get("userEmail").toString();
        databaseUserPassword = userInfo.get("userPassword").toString();

        System.out.println("userName: " + databaseUserName + " userEmail: " + databaseUserEmail + " userPassword: " + databaseUserPassword);
    }


    if (userInfo != null) {
        if (databaseUserEmail.equals(requestUserEmail) && databaseUserPassword.equals(requestUserPassword)) {
            response.sendRedirect("mainPage.jsp");
        } else {
%>
<script>window.alert("Your account or passcode is wrong")</script>
<%
        response.setHeader("Refresh", "0;url=signIn.html");
    }
} else {
%>
<script>window.alert("Your account or passcode is wrong")</script>
<%
        response.setHeader("Refresh", "0;url=signIn.html");
    }
%>
