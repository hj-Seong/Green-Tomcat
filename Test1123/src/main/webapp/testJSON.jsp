<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%
	JSONObject jobj = new JSONObject();
	jobj.put("result","true");
	response.setContentType("application/json");
	out.print(jobj.toJSONString());
%>




