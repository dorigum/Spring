<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보 등록 폼</title>
	</head>
	<body>
		<form method="post" action="/project/product/newProduct4">
			상품번호 <input type="text" name="pno"><br>
			상품명 <input type="text" name="pname"><br>
			가격 <input type="text" name="price"><br><br>
			<input type="submit" value="등록"> <input type="reset" value="취소">
		</form>
	</body>
</html>