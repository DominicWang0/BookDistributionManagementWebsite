<%@ page pageEncoding="utf-8" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="book" class="beans.Book"/>
<jsp:setProperty name="book" property="*"/>
<%
    int result = book.addBook();
    if (result != 1) {
%>
<script>window.alert("Fail to Add");</script>
<%
    }
    response.setHeader("Refresh", "1;url=mainPage.jsp");
%>