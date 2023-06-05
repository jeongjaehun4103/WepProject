<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
	* {margin: 0px; padding: 0px;}
	
	header {
		width : 100%;
		height : 60px;
		background-color: black;
		line-height: 60px;
	}
	ul {
		display: flex;
		flex-direction: row;
		flex-wrap: nowrap;
	}
	li {list-style: none;}
	#home {margin-right: 460px; margin-left: 50px;}
	a {
		font-size: 30px;
		color: white;
		margin: 20px;
		text-decoration: none;	
	}
	iframe {
		width: 100%;
		height: 1000px; 
	}
</style>
</head>
<body>
	<header>
		<ul>
			<li><a target = "iframe" href = "welcome_page.jsp" id="home">home</a></li>
			<li><a target = "iframe" href = "sign_up.jsp">LogIn</a></li>
			<li><a target = "iframe" href = "sign_up_form.jsp">Sign-Up</a></li>
			<li><a target = "iframe" href = "product.jsp">Product</a></li>
			<li><a target = "iframe" href = "addProductForm.jsp">Add Product</a></li>
			<li><a target = "iframe" href = "addProductForm.jsp">Update Product</a></li>
			<li><a target = "iframe" href = "addProductForm.jsp">Delete Product</a></li>
			
		</ul>
	</header>
	
	<section>
		<iframe name="iframe" src="welcome_page.jsp">
		</iframe>
	</section>
</body>
</html>