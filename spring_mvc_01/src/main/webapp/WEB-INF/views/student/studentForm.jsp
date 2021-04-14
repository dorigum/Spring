<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생 정보 등록 폼</title>
	</head>
	<body>
		<form method="post" action="/project/student/newStudent4">
			학번 <input type="text" name="no"><br>
			성명 <input type="text" name="name"><br>
			학년 <input type="text" name="year"><br><br>
			<input type="submit" value="등록"> <input type="reset" value="취소">
		</form>
	</body>
</html>