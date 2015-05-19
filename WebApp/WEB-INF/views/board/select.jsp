<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>

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
			<jsp:include page = "/WEB-INF/views/include/header.jsp" flush="false"/>
		</div>
		
		<div id="navigation">
			<c:import url="/WEB-INF/views/include/navigation.jsp" >
			<c:param name="type" value="guest"></c:param>
			</c:import>
		</div>
		
		
		
		<div id="content">
			
			<table>
				<tr>
					<td class="shotlint">${select.no}</td>
					<td class="longline">title</td>
					<td class="midline">���� ${select.date}</td>
				</tr>
				
				<tr>
					<td class="shotlint">�ۼ��� ${select.memberName}</td>
					<td class="longline">${select.title}</td>
					<td class="midline">��ȸ�� ${select.viewCnt}</td>
				</tr>
				</table>
				<div class="areabox">
					${select.content }
				</div>
				
				<div class="bottombox">
				<br>
					 	<c:if test="${authMember.name !=null }" ><a class ="imgs" href="/mysite3/WEB-INF/views/board/wirte.jsp"><img src="/mysite/views/board/images/write.png" alt="�۾���"></a></c:if>
					 <c:if test="${authMember.name == select.memberName }"><a class ="imgs" href="/mysite3/bd?a=modify&no=${select.no }"><img src="/mysite3/WEB-INF/views/board/images/modify.png" alt="�ۼ���"></a></c:if> 
					 <c:if test="${authMember.name == select.memberName }"> <a class ="imgs" href="/mysite3/bd?a=delete&no=${select.no }"><img src="/mysite3/WEB-INF/views/board/images/delete.png" alt="����"></a></c:if> 
					 <a class ="imgs" href="/mysite3/bd"><img src="/mysite3/WEB-INF/views/board/images/list.png" alt="����Ʈ"></a>
				</div>
				
				<!-- <div class="list">
					������ ������
				</div> -->
		
		</div>
			
				
	
	
		
	
	<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
	</div>	
	
	</div>	

</body>
</html>