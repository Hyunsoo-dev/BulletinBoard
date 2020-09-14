<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	String seq = request.getParameter("seq");
    
   		BoardVO vo = new BoardVO();
   		vo.setSeq(Integer.parseInt(seq));	
   		
   		BoardDAO boardDAO = new BoardDAO();
   		BoardVO board = boardDAO.getBoard(vo);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<a href="logout.do">로그아웃</a>
	<form action="updateBoard.do" method="post">
		<input type="hidden" name="seq" value="<%=seq %>">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="<%= board.getTitle()%>"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= board.getWriter() %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="content" cols="40" rows="10">
						<%= board.getContent() %>			
					</textarea>
				</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td><%=board.getRegDate() %></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><%=board.getCnt() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="글 수정">
				</td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<a href="insertBoard.jsp">글 등록</a>
	<a href="deleteBoard.do">글 삭제</a>
	<a href="getBoardList.do">글 목록</a>
</body>
</html>