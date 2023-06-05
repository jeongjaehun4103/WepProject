<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="storage.Product"%>   
<%@ page import="storage.ProductRepository"%>
<%@ page import="java.util.*" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<style>
	body {
		width: 1024px;
		margin: auto;
	}
	header{
		font-size: 40px;
		margin-top: 100px;
	}
	
	div#container {
		display: inline-block;
	}
	
	#part {
		width: 300px; margin: 16px;
		height: 600px;
		display: flex;
		flex-direction: column;
	}
	
	.img {
		width: 100%;
		height: 400px;
	}
	.spec {
		width: 100%;
		text-align: center;
	}
	
</style>
</head>
<body>
	<header>상품목록</header>
	<%
		request.setCharacterEncoding("UTF-8");
		List<Product> list = ProductRepository.getInstance().getList();
		for (int i = 0; i < list.size(); i++){ 
	%>
	<div id="container">
		<section id="part">
			<div class="img" style="background: url(<%= list.get(i).getImageFile() %>)center; background-size: cover;" ></div>
			<div class="spec">
				<p><%= list.get(i).getName() %></p>
				<p><%= list.get(i).getDescription() %></p>
				<p><fmt:formatNumber value="<%= list.get(i).getPrice() %>" groupingUsed="true"/>원</p> 
			</div>
			<div class="price"></div>
			<input type="button" value="상세정보" onclick="location.href='product_detail.jsp?productId=<%= list.get(i).getId() %>'">
		</section>
	</div>
	<% } %>
	
	
</body>
</html>