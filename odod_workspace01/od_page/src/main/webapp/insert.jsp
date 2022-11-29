<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp"/>
	<section>
		<h2><b>오디션 등록</b></h2>
		<form method="post" action="action.jsp" name="frm">
			<table border="1">
				<tr>
					<td>참가번호</td>
					<td style="text-align: left">
						<input type="text" name="artist_id">*참가번호는(A000) 4자리입니다.
					</td>
				</tr>
				<tr>
					<td>참가자명</td>
					<td style="text-align: left">
						<input type="text" name="artist_name">
					</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td style="text-align: left">
						<input type="text" name="date1">년
						<input type="text" name="date2">월
						<input type="text" name="date3">일
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td style="text-align: left">
						<input type="radio" name="gender" value="M">남성
						<input type="radio" name="gender" value="F">여성
					</td>
				</tr>
				<tr>
					<td>특기</td>
					<td style="text-align: left">
						<select name="talent">
							<option value="">특가선택</option>
							<option value="1">보컬</option>
							<option value="2">댄스</option>
							<option value="3">랩</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>소속사</td>
					<td style="text-align: left">
						<input type="text" name='agency'>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="오디션 등록" onclick="insertCheck()">
					<input type="submit" value="다시쓰기" onclick="res()">
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
</html>