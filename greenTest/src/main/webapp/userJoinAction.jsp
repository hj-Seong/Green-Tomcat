<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% // java.io.PrintWriter : 자바스크립트 출력용 %>

<% // 현재 페이지는 자바를 이용하여 데이터를 DB에 넣어주는 페이지
	// 받아온 값을 utf-8로 인코딩
	request.setCharacterEncoding("UTF-8");
	// 받아올 값을 DTO에 저장하기위해 선언
	String userID = null;
	String userPassword = null;
	
	//userID의 값을 request에서 받아서와서 넣기
	if(request.getParameter("userID") !=null) {
		//getParameter("userID") form에서보낸 name값으로 호출
		userID = (String) request.getParameter("userID");
	}
	
%>


