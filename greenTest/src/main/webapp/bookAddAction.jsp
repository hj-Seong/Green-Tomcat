<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.BookDTO" %>
<%@ page import="book.BookDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%  // 35분에 확인
	// userJoinAction.jsp를 참고하셔서
	// DTO와 DAO를 사용하여 데이터베이스 값 넣기 *int자료형 주의
	request.setCharacterEncoding("UTF-8");
	
	String title = null;
	int count = 0;
	
	if(request.getParameter("title") != null) {
		title = (String) request.getParameter("title");
	}
	if( request.getParameter("count") != null ) {
		// 문자열을 숫자로 바꾸기위해 parseInt사용
		count = Integer.parseInt(request.getParameter("count"));
	}
	
	// 값이 다 들어오지 않았을 때 뒤로가기
	if( title == null || count == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 되지않은 사항이있습니다')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	// 데이터 베이스에 값이 들어왔을때
	BookDAO bookdao = new BookDAO();
	int result = bookdao.addBook(title, count);
	if(result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스에 book값이 들어갔습니다');");
		script.println("location.href='index.html'");
		script.println("</script>");
		script.close();
		return;
	}
	
%>

