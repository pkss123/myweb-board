<%@page import="Myweb.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%
		AccountDTO login = (AccountDTO) session.getAttribute("login");
		
		String admin = (login != null) ? login.getAdmin() : "n";
	%>

	 <div id="header">
        <h1>ITBANK</h1>

        <div id="menu">
            <p><a href="index.jsp">HOME</a></p>
            <p><a href="board.jsp">BOARD</a></p>
            <p><a href="join.jsp">JOIN</a></p>
            <p>
            	<a href="<%=(login == null) ? "login.jsp" : "logout.jsp"%>">
            	<%=(login == null) ? "LOGIN" : "LOGOUT" %></a>
            </p>
            <p>
          		<a href="list.jsp">
				<%=("y".equals(admin)) ? "MemberList" : "" %>
				</a>
			</p>
        </div>
    </div>

	
    <hr>