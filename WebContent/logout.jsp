<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" %>
<%
session.invalidate();

%>
<jsp:forward page="index?page=login"/>