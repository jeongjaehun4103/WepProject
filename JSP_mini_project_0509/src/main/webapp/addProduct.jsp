<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="storage.Product"%>   
<%@ page import="storage.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	String uploadPath = request.getRealPath("images");
	String id = "";
	String name = "";
	String description = "";
	String manufacturer = "";
	String category = "";
	String condition = "";
	int price = 0;
	long stock = 0;
	int size = 10*1024*1024;
	String filename = "";
	
	try{
		MultipartRequest multi = new MultipartRequest
				(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
		
		id = multi.getParameter("PId");
		name = multi.getParameter("PName");
		description = multi.getParameter("PDescription");
		manufacturer = multi.getParameter("PManufacturer");
		category = multi.getParameter("PCategory");
		condition = multi.getParameter("PCondition");
		price = Integer.parseInt(multi.getParameter("PPrice"));
		stock = Integer.parseInt(multi.getParameter("PStock"));
		
		Enumeration files = multi.getFileNames();
	    String file=(String)files.nextElement();
	    filename=multi.getFilesystemName(file);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	ProductRepository productManager = new ProductRepository().getInstance();
	Product newProduct = new Product();
	
	newProduct.setId(id);
	newProduct.setName(name);
	newProduct.setPrice(price);
	newProduct.setDescription(description);
	newProduct.setCategory(category);
	newProduct.setManufacturer(manufacturer);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setImageFile("images/"+filename);
	
	productManager.setList(newProduct);
	response.sendRedirect("product.jsp");		
%>
<body>

</body>
</html>