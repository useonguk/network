<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");
Connection conn = null;

try{
    conn  = Util.getConnection();
    String sql = "INSERT INTO tbl_member_202205 VALUES(?,?,?,?,?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, custno);
    pstmt.setString(2, custname);
    pstmt.setString(3, phone);
    pstmt.setString(4, address);
    pstmt.setString(5, joindate);
    pstmt.setString(6, grade);
    pstmt.setString(7, city);
    
    pstmt.executeUpdate();
}
catch(Exception e){
    e.printStackTrace();
}

%>
    
<jsp:forward page="list.jsp"></jsp:forward>//여기로 이동시키는 명령어