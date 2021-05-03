<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
    <style>
	.title{
	    display: flex;
	}
	
	.title div{
	    width: 80px;
	}
	
	.title input{
	    border: 0;
	    border-bottom: 1px solid black;
	    outline: none;
	}
	
	#note textarea{
	    width: 100%;
	    height: 600px;
	    resize: none;
	    outline: none;
	    font-size: 1.3em;
	}
    </style>
    
    <c:if test="${empty login }">
    	<script>
    		alert('로그인이 필요한 서비스 입니다');
    		location.href = 'login.jsp';
    	</script>
    </c:if>
    
    <c:if test="${param.update == 'yes'}">
    	<jsp:useBean id="dao" class="Myweb.DAO"/>
    	<c:set var="dto" value="${dao.selectBoardOne(param.idx) }"/>
    	
    </c:if>
    
    <br>
    
	<div id="contents">
        <form action="${param.update == 'yes' ? 'updatePro.jsp'  : 'writePro.jsp' }" method="POST">
            <div class="title">
                <div>
                   	 제목
                </div>
                <input name="title" value="${dto.title }">
            </div>

            <br>
                
                <input name="idx" type="hidden" value="${dto.idx }">
                <input name="nickName" type="hidden" value="${login.nickname }">

            <br><hr><br>

            <div id="note">
                <textarea name="contents">${dto.contents }</textarea>
            </div>

            <p>
                <input class="button" type="submit" value="${param.update == 'yes' ? '수정' : '글 작성' }">
            </p>
        </form>
    </div>
    
    
    
<%@ include file="footer.jsp"%>