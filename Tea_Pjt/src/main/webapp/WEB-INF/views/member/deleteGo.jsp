<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="deleteUser.do" method="POST">
		회원 삭제를 원한다면 비밀번호를 입력하세요.<p>
		user_id: ${user.user_id}
		<input type="hidden" name="userId" value="${user.user_id}">
		<input type="password" name="inputPassword">
		<input type="submit" value="확인">
	</form>
</body>
</html>