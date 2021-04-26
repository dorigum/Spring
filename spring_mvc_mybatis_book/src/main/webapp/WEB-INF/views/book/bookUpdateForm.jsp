<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 정보 수정 화면</title>
	</head>
	<body>
		<form method="post" action="/book/book/update">
			<table>
				<tr><td>도서번호</td><td><input type="text" name="bookNo" value="${book.bookNo }" readonly></td></tr>
				<tr><td>도서명</td><td><input type="text" name="bookName" value="${book.bookName }"></td></tr>
				<tr><td>저자</td><td><input type="text" name="bookAuthor" value="${book.bookAuthor }"></td></tr>
				<tr><td>가격</td><td><input type="text" name="bookPrice" value="${book.bookPrice }"></td></tr>
				<tr><td>발행일</td><td><input type="text" name="bookDate" value="${book.bookDate }"></td></tr>
				<tr><td>재고</td><td><input type="text" name="bookStock" value="${book.bookStock }"></td></tr>
				<tr><td>출판사번호</td><td><input type="text" name="pubNo" value="${book.pubNo }"></td></tr>
				<tr><td colspan="2"><input type="submit" value="완료">
									<input type="reset" value="취소"></td></tr>
			</table>		
		</form>
	</body>
</html>