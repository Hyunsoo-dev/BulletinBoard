<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ������</title>
</head>
<body>
	<form action="join.do" method="post">
	<table>
		<tr>
			<th colspan="2">ȯ���մϴ�.</th>
		</tr>
		<tr>
			<th>���̵�</th>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<th>��й�ȣ</th>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr>
			<th>�̸�</th>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<th>��å</th>
			<td><input type="text" name="role" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="ȸ������" />
				<input type="reset" value="���" onclick="history.back()"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>