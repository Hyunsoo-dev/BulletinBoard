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
				<th>���̵�</th>
				<td><input type="text" name="id" class="login_text" size="30"></td>

			<tr>
				<th>��й�ȣ</th>
				<td><input type="password" name="password" class="login_text" size="30"></td>
			</tr>
			<tr>
				<td colspan="2" class="login_button">
					<input type="submit" value="�α���" >
					<input type="button" value="ȸ������" onclick="location.href='join.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>