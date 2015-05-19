<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sds.icto.mysite.domain.*" %>
<%
	MemberVo authMember = (MemberVo)session.getAttribute("authMember");

%>    
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container">
		<div id="header">
			<jsp:include page="/WEB-INF/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="user">
				<p class="jr-success">
				<img src = "data:image/jpeg;base64,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">
				
				<p>이름 : <%=authMember.getName() %><p><br>
				<p>메일 : <%=authMember.getEmail() %></p><br>
				<p>성별 : <%=authMember.getGender() %></p><br>
				
					
				</p>				
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/WEB-INF/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>