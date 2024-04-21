<%@ page pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="book" class="beans.Book" />
<jsp:setProperty name="book" property="*" />
<%
	int result = book.updateBook();
	String msg = "修改失败，点击确定跳转到图书列表页！";
	if(result == 1){
		msg = "修改成功，点击确定跳转到图书列表页！";
	}
%>
<script>window.alert('<%=msg %>');</script>
<%
	response.setHeader("Refresh", "1;url=mainPage.jsp");
%>