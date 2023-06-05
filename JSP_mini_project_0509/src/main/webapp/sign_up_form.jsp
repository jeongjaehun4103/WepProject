<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
	<form action="sing_up.jsp" method="post">
		<table border="2" cellpadding="5px" style="border-collapse: collapse;">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="ID"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="PASSWORD"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="NAME"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="radio" value="MALE" name="gender">남자
					<input type="radio" value="FEMALE" name="gender">여자
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="number"  placeholder="숫자8자리를 입력해주세요" name="NAME"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="mail" name="MAIL"></td>
			</tr>
			
			
		</table>
	</form>
</body>
</html>