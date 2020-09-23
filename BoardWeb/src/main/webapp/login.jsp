<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css"/>
</head>
<body>
	
	<form action="login.do" method="post">
		<table>
			<tr>
				<th colspan="2" class="login_logo">LOGIN</th>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" class="login_text" size="30"></td>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" class="login_text" size="30"></td>
			</tr>
			<tr>
				<td colspan="2" class="login_button">
					<input type="submit" value="로그인" >
					<input type="button" value="회원가입" onclick="location.href='join.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>