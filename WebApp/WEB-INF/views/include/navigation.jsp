<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<ul>
	<c:choose>
	<c:when test="${param.type=='main'}">
		<li>제민재</li>
		<li class="selected"><a href="/mysite3/index">메인</a></li>
		<li><a href="/mysite3/guestbook">방명록</a></li>
		<li><a href="/mysite3/board">게시판</a></li>
		</c:when>
		<c:when test="${param.type=='guest'}">
		<li>제민재</li>
		<li><a href="/mysite3/index">메인</a></li>
		<li class="selected"><a href="/mysite3/guestbook">방명록</a></li>
		<li><a href="/mysite3/board">게시판</a></li>
		</c:when>
		<c:when test="${param.type=='board'}">
		<li>제민재</li>
		<li><a href="/mysite3/index">메인</a></li>
		<li><a href="/mysite3/guestbook">방명록</a></li>
		<li class="selected"><a href="/mysite3/board">게시판</a></li>
		</c:when>
		
		
		
		<c:otherwise>
		<li class="selected">제민재</li>
		<li><a href="/mysite3/index">메인</a></li>
		<li><a href="/mysite3/guestbook">방명록</a></li>
		<li><a href="/mysite3/board">게시판</a></li>
		</c:otherwise>
	
	</c:choose>
</ul>