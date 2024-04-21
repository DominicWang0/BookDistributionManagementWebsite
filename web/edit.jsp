<%@ page pageEncoding="utf-8" import="java.util.HashMap" %>
<html>
<head>
<title>修改图书信息</title>
<link rel="stylesheet" href="book.css" type="text/css">
<script type="text/javascript" src="book.js"></script>
</head>
<body>
<jsp:useBean id="book" class="beans.Book" />
<jsp:setProperty name="book" property="bookId" />
<%
	HashMap bookinfo = (HashMap)book.getBook();
	if(bookinfo != null){
%>
		<h2 align="center">Modify the Books's Information</h2>
		<form name="form1" onSubmit="return check()" action="edit_do.jsp" method="post">
		<input type="hidden" name="bookId" value="<%=bookinfo.get("bookId") %>">
		<table align="center" width="30%" border="1">
			<tr><th width="30%">Name：</th>
				<td><input type="text" name="bookName" value="<%=bookinfo.get("bookName") %>"></td></tr>
			<tr><th>ISBN: </th>
				<td><input type="text" name="bookISBN" value="<%=bookinfo.get("bookISBN") %>"></td></tr>
			<tr><th>Author: </th>
				<td><input type="text" name="bookAuthor" value="<%=bookinfo.get("bookAuthor") %>"></td></tr>
			<tr><th>Price: </th>
				<td><input type="text" name="bookPrice" value="<%=bookinfo.get("bookPrice") %>"></td></tr>
			<tr><th colspan="2">
			  <input type="submit" value="Continue">
			  <input type="reset" value="Reset"></th></tr>
		</table>
		</form>
<%
	}
%>
</body>
</html>