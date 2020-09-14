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
	<a href="logout.do">�α׾ƿ�</a>
	<form action="updateBoard.do" method="post">
		<input type="hidden" name="seq" value="<%=seq %>">
		<table>
			<tr>
				<td>����</td>
				<td><input type="text" name="title" value="<%= board.getTitle()%>"></td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><%= board.getWriter() %></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<textarea name="content" cols="40" rows="10">
						<%= board.getContent() %>			
					</textarea>
				</td>
			</tr>
			<tr>
				<td>�����</td>
				<td><%=board.getRegDate() %></td>
			</tr>
			<tr>
				<td>��ȸ��</td>
				<td><%=board.getCnt() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�� ����">
				</td>
			</tr>
		</table>
	</form>
	
	<hr>
	
	<a href="insertBoard.jsp">�� ���</a>
	<a href="deleteBoard.do">�� ����</a>
	<a href="getBoardList.do">�� ���</a>
</body>
</html>