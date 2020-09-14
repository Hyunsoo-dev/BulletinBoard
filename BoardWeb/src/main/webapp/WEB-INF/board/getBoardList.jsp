<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="getBoardList.jsp" method="post">
		<table>
			<tr>
				<td>
					<select name="searchCondition">
						<option value="TITLE">����
						<option value="CONTENT">����
					</select>
					<input name="searchKeyword" type="text">
					<input type="submit" value="�˻�">
				</td>
			</tr>
		</table>
	</form>
	
	<table>
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>�����</th>
			<th>��ȸ��</th>
		</tr>
	<%for(BoardVO board : boardList){ %>
		<tr>
			<td><a href="getBoard.do?seq=<%= board.getSeq()%>"><%= board.getSeq() %></a></td>
			<td><%= board.getTitle() %></td>
			<td><%= board.getWriter() %></td>
			<td><%= board.getRegDate() %></td>
			<td><%= board.getCnt() %></td>
		</tr>
	<% } %>
	</table>
	<br>
	<a href="insertBoard.jsp">�� �� ���</a>
</body>
</html>