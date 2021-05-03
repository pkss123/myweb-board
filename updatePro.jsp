<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 처리</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>

	<jsp:useBean id="update" class="Myweb.BoardDTO"/>
	<jsp:setProperty property="*" name="update"/>
	
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	<c:set var="row" value="${dao.updateBoard(param.idx, update) }"/>

	<c:if test="${row == 1 }">
		<script>
			alert('게시글 수정 성공');
			location.href = 'board.jsp';
		</script>
	</c:if>
	
	<c:if test="${row == 0 }">
		<script>
			alert('게시글 수정 실패');
			location.href = 'board.jsp';
		</script>
	</c:if>

</body>
</html>