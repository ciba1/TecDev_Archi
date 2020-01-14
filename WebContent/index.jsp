<%@ page pageEncoding="UTF-8" %>
<% String Page = (String)request.getParameter("page");
	if(Page.equals("home")){
%>

 <%@include file="home.jsp" %>
<%}
	
	if(Page.equals("login")){%>
	<%@include file="login.jsp" %>
	<%} %>
	
	<% if(Page.equals("logout")){%>
	<%@include file="logout.jsp" %>
	<%} %>
	<% if(Page.equals("admin")){%>
	<%@include file="admin.jsp" %>
	<%} %>
