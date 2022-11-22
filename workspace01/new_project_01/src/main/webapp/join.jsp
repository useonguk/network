<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href = "style.css">
<style>
	
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br><br><br><br><br>
	<form method="post" action="i-action.jsp" name="frm">
		<input type="hidden" name="mode" value="insert">
		<table>
			<%
				request.setCharacterEncoding("utf-8");
				Connection conn = null;
				Statement stmt = null;
				String custno = "";
			
				try {
					conn = Util.getConnection();	
					stmt = conn.createStatement();	
					String sql = "select max(custno)+1 as custno from tbl_member_202205";
					ResultSet rs = stmt.executeQuery(sql);	
					rs.next();
					custno = rs.getString("custno");
					
				} catch(Exception e) {
					e.printStackTrace(); 
				}
			%>
			<tr>
				<td>회원 번호(자동 등록)</td>
				<td><input type="text" name ="custno" value="<%=custno %>"></td></tr>
				<tr><td>회원성명
				<td><input type="text" name ="custno" value=""></td></tr>
				<tr><td>회원전화</td>
					<td><input type="text" name ="custno" value=""></td></tr>
				<tr><td>회원주소</td>
				<td><input type="text" name ="custno" value=""></td></tr>
				<tr><td>가입일자</td>
				<td><input type="text" name ="custno" value=""></td></tr>
				<tr><td>고객등급[A:VIP,B:일반,C:직원]</td>
				<td><input type="text" name ="custno" value=""></td></tr>
				<tr><td>도시코드</td>
				<td><input type="text" name ="custno" value=""></td></tr>
		</table>
		<input type="submit" name ="" value="등록">
		<input type="button" name ="" value="조회">
	</form>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>