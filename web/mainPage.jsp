<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: DominicWang
  Date: 2024/4/16
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<!--
Version: 11.2 Pub
Created by Dominic Wang on Oct 20 2023
-->

<html>

<head>
    <title>
        Dominic's Book Store - Online
    </title>
    <link rel="stylesheet" href="./mainPageStyle.css">
</head>

<body onpageshow="ready()">
<jsp:useBean id="book" class="beans.Book"/>

<script>
    document.onreadystatechange = ready();
    function ready() {
        if (document.readyState == "complete") {
            document.body.style.display = "block";
        } else {
            document.body.style.display = "none";
        };
    }

</script>

<!-- hero -->
<div class="box-sp" id="box1">
    <!-- title -->
    <div id="hero_title">
        <h1>Dominic's Book Store</h1>
    </div>

    <!-- menu bar -->
    <div id="bar">
        <div class="inside-box" id="bar1"><a href="#box2" class="bar-link">Home</a></div>
        <div class="inside-box" id="bar2"><a href="#box3" class="bar-link">News</a></div>
        <div class="inside-box" id="bar3"><a href="#box4" class="bar-link">Active</a></div>
        <div class="inside-box" id="bar4"><a href="#box5" class="bar-link">List</a></div>
    </div>

</div>

<!-- Home -->
<div class="box-sp" id="box2">
    <!-- 在顶部为box1预留空间 -->
    <div id="box1_space"></div>

    <div class="box2" id="box_poster1">
        <h1 id="title_poster1">Shopping Offline !<br>Now you can meet us in Dalian</h1>
        <img id="poster1" src="https://24233895.s21i.faiusr.com/2/3/ABUIABACGAAghMSElgYolJjU8wMwgA84uAg.jpg"
             alt="Dalian Map">
    </div>

</div>

<!-- News -->
<div class="box" id="box3">
    <!-- BOX 标题行 -->
    <div class="hero-box" id="box_box3">
        <!-- iconfont news icon part -->
        <svg t="1697160016128" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
             p-id="772" width="45px">
            <path
                    d="M854.6 288.7c6 6 9.4 14.1 9.4 22.6V928c0 17.7-14.3 32-32 32H192c-17.7 0-32-14.3-32-32V96c0-17.7 14.3-32 32-32h424.7c8.5 0 16.7 3.4 22.7 9.4l215.2 215.3zM790.2 326L602 137.8V326h188.2zM320 482a8 8 0 0 0-8 8v48a8 8 0 0 0 8 8h384a8 8 0 0 0 8-8v-48a8 8 0 0 0-8-8H320z m0 136a8 8 0 0 0-8 8v48a8 8 0 0 0 8 8h184a8 8 0 0 0 8-8v-48a8 8 0 0 0-8-8H320z"
                    fill="#485EAA" p-id="773"></path>
        </svg>
        <h1 class="t-box">NEWS</h1>
    </div>
    <div id="box_news">
        <div class="d-news" id="box_news1">
            <h2>Dominic DL now open in Dalian</h2>
            <p>We have met with offline consumers in Shanghai, Changchun and Jilin. Now, we can also meet
                offline consumers in Dalian. Give them a superior shopping, reading and consuming experience.
            </p>
        </div>
        <div class="d-news" id="box_news2">
            <h2>Annual points settlement for the member's account</h2>
            <p>Dominica's Member Account will cease to accrue into the 2023 Individual Annual Points Account on
                February 1, 2024. New points generated thereafter will be credited to the 2024 Individual Annual
                Points account.
                The 2023 Individual Annual Points Account will be cleared on March 1, 2024.</p>
        </div>
        <div class="d-news" id="box_news3">
            <h2>The Black Friday annual sale will start on November 23, 2023</h2>
            <p>Online and offline stores will begin a 7-day Black Friday event on November 23, 2023, where
                stores will have different levels of discounts and reductions. Please look forward to the next
                update of our section for specific preferential policies.</p>
        </div>
        <div class="d-news" id="box_news4">
            <h2>We are soon launching a new feature for "Online Store Inventory"</h2>
            <p>Before you go to the store to buy the book you want, you can use this feature to check online if
                the store you want to visit has enough inventory, or to determine which other stores near you
                are available for pickup.</p>
        </div>
    </div>
</div>

<!-- Active -->
<div class="box" id="box4">
    <div class="hero-box" id="box_box4">
        <!-- iconfont active icon part -->
        <svg t="1697426353368" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
             p-id="928" width="45px">
            <path
                    d="M880 112H144c-17.7 0-32 14.3-32 32v736c0 17.7 14.3 32 32 32h736c17.7 0 32-14.3 32-32V144c0-17.7-14.3-32-32-32zM641.7 520.8L442.3 677.6c-7.4 5.8-18.3 0.6-18.3-8.8V355.3c0-9.4 10.9-14.7 18.3-8.8l199.4 156.7c5.7 4.5 5.7 13.1 0 17.6z"
                    p-id="929" fill="#485EAA"></path>
        </svg>
        <h1 class="t-box">ACTIVE</h1>
    </div>
    <div id="box_active">
        <div class="d-active" id="box_active1">
            <h2>New Store</h2>
                <p>Now, You can still find us in Dalian!</p>
        </div>
        <div class="d-active" id="box_active2">
            <h2>Sale in Dec.</h2>
                <p>Dec. 2023 limited-time book list</p>
        </div>
        <div class="d-active" id="box_active3">
            <h2>New Books</h2>
                <p>Browse new Books</p>
        </div>
        <div class="d-active" id="box_active4">
            <h2>Announcement</h2>
                <p>Version: 23.41.1<br>Release: Oct. 8, 2023</p>
        </div>
    </div>
</div>


<!-- List -->
<div class="box" id="box5">
    <div class="hero-box" id="box_box5">
        <!-- iconfont active icon part -->
        <svg t="1697426353368" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"
             p-id="928" width="45px">
            <path
                    d="M880 112H144c-17.7 0-32 14.3-32 32v736c0 17.7 14.3 32 32 32h736c17.7 0 32-14.3 32-32V144c0-17.7-14.3-32-32-32zM641.7 520.8L442.3 677.6c-7.4 5.8-18.3 0.6-18.3-8.8V355.3c0-9.4 10.9-14.7 18.3-8.8l199.4 156.7c5.7 4.5 5.7 13.1 0 17.6z"
                    p-id="929" fill="#485EAA"></path>
        </svg>
        <h1 class="t-box">LIST</h1>
    </div>
    <div class="box">
        <a href="add.html">
            <button type="button">Add Book</button>
        </a>
    </div>

    <div class="box" align="center">

        <table align="center" width="100%" border="1">
            <tr>
                <th>Book Name</th>
                <th>Author</th>
                <th>ISBN</th>
                <th>Price</th>
                <th>Operation</th>
            </tr>

            <%
                ArrayList books = (ArrayList) book.getAllBooks();
                for (Object o : books) {
                    Map m = (HashMap) o;
                    System.out.println(m.size());
            %>


            <tr>
                <td><%=m.get("bookName")%>
                </td>

                <td><%=m.get("bookAuthor")%>
                </td>

                <td><%=m.get("bookISBN")%>
                </td>

                <td>CNY ¥ <%=m.get("bookPrice")%>
                </td>
                <td>
                    <a href="edit.jsp?bookId=<%= m.get("bookId")%>">Modify</a>&nbsp;
                    <a href="del.jsp?bookId=<%= m.get("bookId")%>" onclick="return confirm('确定删除？')">Delete</a>
                </td>
            </tr>

            <%
                }
            %>

        </table>
    </div>
</div>

<!-- Bottom -->
<div class="box-sp" id="box6">
    <div id="box_bottom_body">
        <div class="bottom-box" id="box_bottom_icon">
            <img src="https://24233895.s21i.faiusr.com/4/3/ABUIABAEGAAg0ZyQiAYowq6C2gMwoAY4oAY.png" alt="Ring3 icon"
                 id="img_botton_icon">
        </div>
        <div class="bottom-box" id="box_bottom_title">
            <h2>Dominic's Book Store</h2>
            <p>Version : 11.2</p>
            <p>Website Author : Dominic Wang(王子铭) Shenglong Cui(崔生龙)</p>
            <p><a href="https://www.laurence0.com/col.jsp?id=139">more about Dominic</a></p>
        </div>
        <hr>
        <div class="bottom-box" id="box_bottom_depicted">
            <h2>Depicted</h2>
            <p>The website was developed and designed by Dominic. Thanks to Douban and Laurence0.com for providing
                resource support. All data is fictitious and for illustrative purposes only.</p>
            <p>Better idea?&nbsp;<a href="mailto:dw@laurence0.com">mail to author </a></p>
        </div>
    </div>
</div>

</body>

</html>