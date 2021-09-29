<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	Connection conn;
	PreparedStatement preStmt;
	ResultSet rs;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "tiger";
	//String query ="select * from members";
%>    


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>memberDataInsert.jsp</title>
</head>
<body>
	
	<%
		Class.forName(driver);
		conn = DriverManager.getConnection(url,uid,upw);
		
		int flag;
		
		String query = "insert into members (name, id, pw, phone1, phone2, phone3, gender) values (?, ?, ?, ?, ?, ?, ?)";
		//stmt = conn.createStatement();
		preStmt = conn.prepareStatement(query);
		
		preStmt.setString(1, "권율");
		preStmt.setString(2, "kwonyul");
		preStmt.setString(3, "1234566");
		preStmt.setString(4, "010");
		preStmt.setString(5, "8888");
		preStmt.setString(6, "9999");
		preStmt.setString(7, "man");
		
		flag = preStmt.executeUpdate();//쿼리실행이 성공하면 int 1을 반환
		
		preStmt.setString(1, "이몽룡");
		preStmt.setString(2, "leemong");
		preStmt.setString(3, "166888");
		preStmt.setString(4, "010");
		preStmt.setString(5, "4564");
		preStmt.setString(6, "4581");
		preStmt.setString(7, "man");
		
		flag = preStmt.executeUpdate();//쿼리실행이 성공하면 int 1을 반환
		
		preStmt.setString(1, "성춘향");
		preStmt.setString(2, "sungchoon");
		preStmt.setString(3, "546546");
		preStmt.setString(4, "010");
		preStmt.setString(5, "1233");
		preStmt.setString(6, "7777");
		preStmt.setString(7, "woman");
		
		flag = preStmt.executeUpdate();//쿼리실행이 성공하면 int 1을 반환
		
		preStmt.setString(1, "박기술");
		preStmt.setString(2, "parkki");
		preStmt.setString(3, "465441");
		preStmt.setString(4, "010");
		preStmt.setString(5, "5454");
		preStmt.setString(6, "6688");
		preStmt.setString(7, "man");
		
		flag = preStmt.executeUpdate();//쿼리실행이 성공하면 int 1을 반환
		
		if(flag == 1) {
			out.println("입력하신 정보가 정상적으로 처리되었습니다.");
		} else {
			out.println("입력하신 정보를 입력하는데 실패하였습니다.");
		}
	
	
	
	%>
	
</body>
</html>