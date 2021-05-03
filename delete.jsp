<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제 처리</title>
</head>
<body>
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	<c:set var="row" value="${dao.deleteBoard(param.idx) }"></c:set>
	
	<c:if test="${row == 1 }">
		<script>
			alert('삭제 완료');
			location.href = 'board.jsp';
		</script>
	</c:if>
	
	<c:if test="${row == 0 }">
		<script>
			alert('삭제 실패');
			location.href = 'board.jsp';
		</script>
	</c:if>
	
</body>
</html>