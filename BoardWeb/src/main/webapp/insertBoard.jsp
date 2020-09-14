<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<a href="logout.do">로그아웃</a>
	<form action="insertBoard.do" method="post">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" size="10"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="40" rows="10"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="새 글 등록"></td>
		</tr>
	</table>
	</form>
	<a href="getBoardList.do">글 목록 가기</a>
</body>
</html>