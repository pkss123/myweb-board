<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성 처리</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="write" class="Myweb.BoardDTO"/>
	<jsp:setProperty property="*" name="write"/>
	<jsp:setProperty property="ipaddr" name="write" value="<%=request.getRemoteAddr() %>"/>
	
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	<c:set var="row" value="${dao.insertBoard(write) }"/>
		
	<c:if test="${row == 1 }">
		<script>
			alert('작성 완료');
			location.href = 'board.jsp';
		</script>
	</c:if>
	
	<c:if test="${row == 0 }">
		<script>
			alert('작성 실패');
			history.go(-1);
		</script>
	</c:if>
	
</body>
</html>