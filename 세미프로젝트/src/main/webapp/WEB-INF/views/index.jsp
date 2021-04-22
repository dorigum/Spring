 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
	</head>
	<body>
		<div id="wrap">
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/jsp/top.jsp"  flush="true"/>

           <section>
            	<article  id="slideShow">
                	<div id="prevNextButtonBox">
                    		<img id="prevButton" src="<c:url value='/image/prevButton.png'/>">
                        	<img id="nextButton" src="<c:url value='/image/nextButton.png'/>">
                     </div>
            		<div id="slideShowBox">                    	
                    	<div id="slidePanel">
                            <img src="<c:url value='/image/slide_img_01.jpg'/>" class="slideImage"/>
                            <img src="<c:url value='/image/slide_img_02.jpg'/>" class="slideImage"/>
                            <img src="<c:url value='/image/slide_img_03.jpg'/>" class="slideImage"/>
                            <img src="<c:url value='/image/slide_img_04.jpg'/>" class="slideImage"/>
                            <img src="<c:url value='/image/slide_img_05.jpg'/>" class="slideImage"/>
                        </div>
                     </div>   
                     <div id="controlPanel">
		                    <img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
		                    <img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
		                    <img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
		                    <img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
		                    <img src="<c:url value='/image/controlButton1.png'/>" class="controlButton">
	                 </div>                     
                </article> <!-- slideShow 끝 -->

                <article  id="content2"> <!-- 베스트 상품 -->   
            		<div id="productBox">
            			<h3>베스트 상품</h3>
            			<div class='product'>
            				<div><a href="<c:url value='/itemDetail'/>"><img src="<c:url value='/image/prd1.jpg'/>"></a><br>메모지1<br>￦1,500</div>
            				<div><a href="#"><img src="<c:url value='/image/prd2.jpg'/>"></a><br>메모지2<br>￦2,500</div>
            				<div><a href="#"><img src="<c:url value='/image/prd3.jpg'/>"></a><br>메모지3<br>￦3,500</div>
            				<div><a href="#"><img src="<c:url value='/image/prd4.jpg'/>"></a><br>메모지4<br>￦4,500</div>
            			</div>
            			<div class='product'>
            				<div><a href="#"><img src="<c:url value='/image/prd5.jpg'/>"></a><br>메모지5<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd6.jpg'/>"></a><br>메모지6<br>￦2,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd7.jpg'/>"></a><br>메모지7<br>￦3,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd8.jpg'/>"></a><br>메모지8<br>￦4,000</div><br><br>
            			</div>
            			
            			<h3>신상품</h3>
            			<div class='product'>
            				<div><a href="<c:url value='/itemDetail'/>"><img src="<c:url value='/image/prd1.jpg'/>"></a><br>메모지1<br>￦1,500</div>
            				<div><a href="#"><img src="<c:url value='/image/prd2.jpg'/>"></a><br>메모지2<br>￦2,500</div>
            				<div><a href="#"><img src="<c:url value='/image/prd3.jpg'/>"></a><br>메모지3<br>￦3,500</div>
            				<div><a href="#"><img src="<c:url value='/image/prd4.jpg'/>"></a><br>메모지4<br>￦4,500</div>
            			</div>
            			<div class='product'>
            				<div><a href="#"><img src="<c:url value='/image/prd5.jpg'/>"></a><br>메모지5<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd6.jpg'/>"></a><br>메모지6<br>￦2,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd7.jpg'/>"></a><br>메모지7<br>￦3,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd8.jpg'/>"></a><br>메모지8<br>￦4,000</div><br><br>
            			</div>
					</div>         	
                </article>
            </section>
            
            <!-- BOTTOM -->
            <jsp:include page="/WEB-INF/views/jsp/bottom.jsp"  flush="true"/>
      </div>
   </body>
</html>