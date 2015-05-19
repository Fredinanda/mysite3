<%@ page contentType="text/html;charset=UTF-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/mysite3/assets/css/boardselect.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page = "/views/include/header.jsp" flush="false"/>
		</div>
		
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp" >
			<c:param name="type" value="guest"></c:param>
			</c:import>
		</div>
		
		
		
		<div id="content">
			<br>
			<form action="/mysite3/bd" method="post">
					<input type="hidden" name="a" value="insert">
					<input type="hidden" value="${authMember.no}" id="member_no" name="member_no">
					<input type="hidden" value="${authMember.name}"id="member_name" name="member_name"> 
			<div class="title">
			제목
			<input type="text" size="69" name="title" value="제목을 입력하세요.">
			</div>
			
			<div class="text">
			내용
			<TEXTAREA NAME=txt id=txt COLS=71 ROWS=10 ></TEXTAREA>
			</div>
			<div>
			<br>
			<div align="right">
				
				<input class= "imgs" type="image" src="/mysite3/WEB-INF/views/board/images/write.png" value="write">
							
				<a href ="/mysite3/WEB-INF/views/board/list.jsp">
				<img class="imgs" src="/mysite3/WEB-INF/views/board/images/cancel.png" alt="���">
				</a>
			</div>
			<Br>
			</div>
			</form>
		
		</div>
			
				
	
	
		
	
	<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	</div>	
	
	</div>	

</body>
</html>