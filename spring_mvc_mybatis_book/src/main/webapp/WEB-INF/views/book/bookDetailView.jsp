<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 상세 정보 조회</title>
	</head>
	<body>
		<h3>도서 상세 정보 조회</h3>
		<table border="1" width="400">
			<tr><td>도서번호</td><td>${book.bookNo }</td></tr>
			<tr><td>도서명</td><td>${book.bookName }</td></tr>
			<tr><td>저자</td><td>${book.bookAuthor }</td></tr>
			<tr><td>가격</td><td>${book.bookPrice }</td></tr>
			<tr><td>출판일</td><td>${book.bookDate }</td></tr>
			<tr><td>재고</td><td>${book.bookStock }</td></tr>
			<tr><td>출판사번호</td><td>${book.pubNo }</td></tr>
		</table><br><br>
		
		<a href="<c:url value='/'/>">메인 화면으로 이동</a><br><br>
		
		<!-- 도서 정보 수정 화면 이동 -->
		<a href="c:url value='/book/updateForm/${book.bookNo }'/>">도서 정보 수정</a><br><br>
	
		<a href="javascript:deleteCheck();">도서 정보 삭제</a>
		<!-- 삭제 확인 메시지 출력 -->
		<script>
			function deleteCheck(){
				var answer = confirm("삭제하시겠습니까?");
				if(answer == true){
					location.href="/mybatis/book/book/delete/${book.bookNo}";
					// 여기 경로 체크하기
				}
			}
		</script>
	</body>
</html>