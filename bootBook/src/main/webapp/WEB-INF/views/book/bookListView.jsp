<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 도서 조회</title>
	</head>
	<body>
		<h3>전체 도서 조회</h3>
		<table border="1">
			<tr><th>도서번호</th><th>도서명</th><th>저자</th><th>가격</th>
				<th>발행일</th><th>재고</th><th>출판사번호</th></tr>
				
			<c:forEach items="${bookList }" var="book">
				<tr>
					<td><a href="<c:url value='/book/bookDetailView/${book.bookNo }'/>">${book.bookNo }</a></td>
					<td>${book.bookName }</td>
					<td>${book.bookAuthor }</td>
					<td>${book.bookPrice }</td>
					<td>${book.bookDate }</td>
					<td>${book.bookStock }</td>
					<td>${book.pubNo }</td>
				</tr>
			</c:forEach>
		</table><br><br>
		
		<a href="<c:url value='/'/>">메인 화면으로 이동</a>
	</body>
</html>