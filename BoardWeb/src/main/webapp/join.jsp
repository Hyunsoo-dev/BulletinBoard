<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 페이지</title>
</head>
<body>
	<form action="join.do" method="post">
	<table>
		<tr>
			<th colspan="2">환영합니다.</th>
		</tr>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<th>직책</th>
			<td><input type="text" name="role" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="회원가입" />
				<input type="reset" value="취소" onclick="history.back()"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>