<%@ page pageEncoding="utf-8" %>
<jsp:useBean id="book" class="beans.Book" />
<jsp:setProperty name="book" property="bookId" />
<%
	int result = book.deleteBook();
	String msg = "删除失败，点击确定跳转到图书列表页！";
	if(result == 1){
		msg = "删除成功，点击确定跳转到图书列表页！";
	}
%>
<script>window.alert('<%=msg %>');</script>
<%
	response.setHeader("Refresh", "1;url=mainPage.jsp");
%>