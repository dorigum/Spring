 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>penPage</title>
	</head>
	<body>
		<div id="wrap">
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/jsp/top.jsp"  flush="true"/>

           <section>
                <article  id="content2"> <!-- 펜 상품 -->   
            		<div id="productDetailBox">
            			<h3>[ 펜 ]</h3>
            			<div class='productDetail'>
            				<div><a href="#"><img src="<c:url value='/image/pen01.jpg'/>"></a><br>에프엑스 제타 SET<br>￦5,000</div>
            				<div><a href="#"><img src="<c:url value='/image/pen02.jpg'/>"></a><br>플립3<br>￦3,000</div>
            				<div><a href="#"><img src="<c:url value='/image/pen03.jpg'/>"></a><br>에프엑스 제타 파스텔 펄<br>￦8,000</div>
            				<div><a href="#"><img src="<c:url value='/image/pen04.jpg'/>"></a><br>153 클립(CLIP)<br>￦500</div>
            			</div>
            			<div class='productDetail'>
            				<div><a href="#"><img src="<c:url value='/image/pen05.jpg'/>"></a><br>에프엑스 일오삼 탑골셋-트(4SET)<br>￦6,000</div>
            				<div><a href="#"><img src="<c:url value='/image/pen06.jpg'/>"></a><br>트리피스(Triffis)<br>￦300</div>
            				<div><a href="#"><img src="<c:url value='/image/pen07.jpg'/>"></a><br>153 오리지널<br>￦4,800</div>
            				<div><a href="#"><img src="<c:url value='/image/pen08.jpg'/>"></a><br>153 퍼피<br>￦3,000</div><br><br>
            			
            			◀	&nbsp;&nbsp;<a href="#">1</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="#">2</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="#">3</a>&nbsp;&nbsp;	▶
            			</div>
					</div>         	
                </article>
            </section>
            
            <!-- BOTTOM -->
            <jsp:include page="/WEB-INF/views/jsp/bottom.jsp"  flush="true"/>
      </div>
   </body>
</html>