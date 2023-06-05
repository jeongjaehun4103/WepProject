<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="storage.Product"%>   
<%@ page import="storage.ProductRepository"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Detail</title>
<style>
	body {
		display: flex;
		flex-direction: row;
		flex-wrap: nowrap;
		width: 1024px;
		height: 600px;
		margin: 100px auto;
	}
	div#img, #detail_spec {
		width: 512px;
		height: 600px;
	}
	
	#detail_spec {
		text-align: center;
		font-size: 20px;
	}
</style>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("productId");
	Product thisProduct = new Product();
	List<Product> list = ProductRepository.getInstance().getList();
	for(int i = 0; i < list.size(); i++){
		if(list.get(i).getId().equals(id)){
			thisProduct = list.get(i);
			break;
		}
	}
%>
<body>
	<div id="img" style="background: url(<%= thisProduct.getImageFile() %>) center; background-size: cover;"></div>
	<div id="detail_spec">
		<p>제품명 : <%= thisProduct.getName() %></p>
		<p>제품성능 : <%= thisProduct.getDescription() %></p>
		<p>제조사 : <%= thisProduct.getManufacturer() %></p>
		<p>카테고리 : <%= thisProduct.getCategory() %></p>
		<p>제품상태 : <%= thisProduct.getCondition() %></p>
		<p>가격 : <fmt:formatNumber value="<%= thisProduct.getPrice() %>" groupingUsed="true"/>원 </p>
		<p>재고량 : <fmt:formatNumber value="<%= thisProduct.getUnitsInStock() %>" groupingUsed="true"/>개</p>
	</div>
</body>
</html>