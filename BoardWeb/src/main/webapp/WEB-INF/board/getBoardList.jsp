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
						<option value="TITLE">제목
						<option value="CONTENT">내용
					</select>
					<input name="searchKeyword" type="text">
					<input type="submit" value="검색">
				</td>
			</tr>
		</table>
	</form>
	
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
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
	<a href="insertBoard.jsp">새 글 등록</a>
</body>
</html>