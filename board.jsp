<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<%@ include file="header.jsp" %>
	<style>
		#board {
			border-collapse: collapse;
			width: 80%;
			margin: 0 auto;
		}
		th, td {
			padding: 5 10px;
		    border-bottom: 1px solid rgb(192, 186, 186);
			text-align: center;
		}
		tr:nth-child(1){
		    background-color: #bfe2d3;
		}
		
		#board td:nth-child(2){
		    width: 50%;
		    text-align: left;
		}
		
		#write {
		    width: 80%;
		    margin: 0 auto;
		    text-align: right;
		}
		
		#write button{
		    padding: 10px 15px;
		    font-weight: bolder;
		    border: 0;
		    background-color: #bfe2d3;
		    cursor: pointer;
		}
	</style>
	
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	<c:set var="list" value="${dao.selectBoard() }"/>
	
	
	<table id="board">
		<tr>
			<th>no.</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성 날짜</th>
			<th>조회 수</th>
		</tr>
		
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td><a href="view.jsp?idx=${dto.idx }">${dto.title }</a></td>
				<td>${dto.nickName }</td>
				<td>${dto.creation }</td>
				<td>${dto.viewCount }</td>
			</tr>
				
		</c:forEach>
	
	</table>
	
	 <br>
	 
    <div id="write">
        <a href="write.jsp"><button>글 쓰기</button></a>
    </div>
	
<%@ include file="footer.jsp"%>