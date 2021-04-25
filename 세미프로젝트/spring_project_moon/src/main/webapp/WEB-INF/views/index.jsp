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
            			<h3>[ 베스트 상품 ]</h3>
            			<div class='product'>
            				<div><a href="<c:url value='/itemDetail'/>"><img src="<c:url value='/image/best1.jpg'/>"></a><br>퍼피 러브 AD10<br>￦1,500</div>
            				<div><a href="#"><img src="<c:url value='/image/best2.jpg'/>"></a><br>마이 리틀 베어 AD07<br>￦1,500</div>
            				<div><a href="#"><img src="<c:url value='/image/best3.jpg'/>"></a><br>시티 팝 AD06<br>￦1,500</div>
            				<div><a href="#"><img src="<c:url value='/image/best4.jpg'/>"></a><br>어딘가멍청한친구들 D39<br>￦3,500</div>
            			</div>
            			<div class='product'>
            				<div><a href="#"><img src="<c:url value='/image/best5.jpg'/>"></a><br>야채를먹자 D33<br>￦3,500</div>
            				<div><a href="#"><img src="<c:url value='/image/best6.jpg'/>"></a><br>보보 마법의 숲 메모지 C141<br>￦2,500</div>
            				<div><a href="#"><img src="<c:url value='/image/best7.jpg'/>"></a><br>베리 숲속 동화 메모지 C139<br>￦2,500</div>
            				<div><a href="#"><img src="<c:url value='/image/best8.jpg'/>"></a><br>와구와구모구 A587<br>￦1,700</div><br><br>
            			</div>
            			
            			<h3>[ 신상품 ]</h3>
            			<div class='product'>
            				<div><a href="<c:url value='/itemDetail'/>"><img src="<c:url value='/image/prd1.jpg'/>"></a><br>킬러의 화분 NP49 엽서<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd2.jpg'/>"></a><br>팝콘독의 독 패들 NP32 엽서<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd3.jpg'/>"></a><br>행성비숑 NP48 엽서<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd4.jpg'/>"></a><br>북극곰을 찾습니다 NP37 엽서<br>￦1,000</div>
            			</div>
            			<div class='product'>
            				<div><a href="#"><img src="<c:url value='/image/prd5.jpg'/>"></a><br>Watercolor tulip NP31 엽서<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd6.jpg'/>"></a><br>Were connected NP28 엽서<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd7.jpg'/>"></a><br>핑크호텔의주인공 NP51 엽서<br>￦1,000</div>
            				<div><a href="#"><img src="<c:url value='/image/prd8.jpg'/>"></a><br>콩콩 파티의시작 NP27 엽서<br>￦1,000</div><br><br>
            			</div>
					</div>         	
                </article>
            </section>
            
            <!-- BOTTOM -->
            <jsp:include page="/WEB-INF/views/jsp/bottom.jsp"  flush="true"/>
      </div>
   </body>
</html>