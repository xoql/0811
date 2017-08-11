<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="../include/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login로그인</title>
</head>
<%-- <c:when test="${msg==null }">
	<c:choose>
		
	</c:choose>
	<c:otherwise>
		<script>
			alert('${msg}');
		</script>
	</c:otherwise>
</c:when> --%>
	<form action="login.do" method="post">
		<h3>로그인</h3>
		<input id="user_id" type="text" name="user_id" placeholder="ID" ><p>
		<input id="password" type="password"name="password" placeholder="PASSWORD" ><p>
		<input type="submit" value="로그인">
	</form>
</html>