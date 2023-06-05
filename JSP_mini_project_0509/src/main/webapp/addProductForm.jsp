<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<style>
	* {margin: 0px; padding: 0px;}
		
	form {
		width: 400px;
		margin: 0 auto;
		margin-top: 200px;
		padidng : 100px;
	}
	td {padding: 5px;}
</style>
</head>
<body>
	<form action="addProduct.jsp" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>상품코드</td>
				<td><input type="text" name="PId">
			</tr>
			<tr>
				<td>제품명</td>
				<td><input type="text" name="PName">
			</tr>
			<tr>
				<td>제품성능</td>
				<td><input type="text" name="PDescription">
			</tr>
			<tr>
				<td>제조사</td>
				<td><input type="text" name="PManufacturer">
			</tr>
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="PCategory">
			</tr>
			<tr>
				<td>상태</td>
				<td><input type="text" name="PCondition">
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="PPrice">
			</tr>
			<tr>
				<td>초기수량</td>
				<td><input type="text" name="PStock">
			</tr>
			<tr>
				<td>이미지첨부</td>
				<td><input type="file" name="PFile">
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송"> <input type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>
</body>
</html>