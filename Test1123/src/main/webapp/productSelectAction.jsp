<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.ProductDTO" %>
<%@ page import="product.ProductDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과확인</title>
</head>
<body>
<%
	// post를 이용해서 찾아올 때 필요
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	// 값을 저장할 공간 선언
	ProductDTO productDTO = null;
	// 쿼리문을 사용해서 값 넣어주기
	ProductDAO productDAO = new ProductDAO();
	productDTO = productDAO.selectProduct(name);
	
	if(productDTO ==null) {
%>
	조회결과가 없습니다 
	<%} else {%>
	조회결과 <br>
	물건이름 : <%=productDTO.getName() %> <br>
	물건 개수 : <%=productDTO.getCount() %>
	<%} %>
	
</body>
</html>