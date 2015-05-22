<%@ page contentType="text/html;charset=UTF-8" %>
   

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/mysite3/assets/css/boardlist.css" rel="stylesheet" type="text/css">
</head>
<body>
		<div id="container">
			<div id="header">
				<jsp:include page = "/WEB-INF/views/include/header.jsp" flush="false"/>
			</div>
			
		
		
		
		<div id="content">
			<div align="center">
				<img src="/mysite3/assets/images/smd.png" 	width="540px">
			</div>
			
				<table class="tbl-ex" border="1">
					
					

							
				<tr>
					<th>no</th>
					<th class="title">title</th>
					<th>name</th>
					<th>date</th>
					<th>hit</th>
				</tr>
				<c:forEach items="${list}" var="vo">
				<tr>
					<td>${vo.no }</td>
					<td class="title"><a href="board/select/${vo.no }">${vo.title }</a></td>
					<td>${vo.memberName }</td>
					<td>${vo.date }</td>
					<td>${vo.viewCnt }</td>
				</tr>
				</c:forEach>
				</table>
			
			<div class="page"> 1 </div>
			
			<div class="write">
			<c:if test="${authMember.name !=null }" >
			<a href="board/write"><img src="/mysite3/assets/images/write.png"></a>
			</c:if>
	
			
			<br>
			</div>
			
				
	
		
	</div>
		<div id="navigation">
		
			<c:import url="/WEB-INF/views/include/navigation.jsp" >
				<c:param name="type" value="board"></c:param>
			</c:import>
		</div>

	<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
			
		</div>	
		
	</div>
</body>
</html>