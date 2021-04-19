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
                <article id="content1"> <!-- 탭메뉴 -->     
               	<div id="tabMenuBox">
			            <div id="tabMenuBox">
			            <div id="tabMenu">	
			                <ul id="tab">
			                    <li><img src="<c:url value='/image/tab1.png'/>"></li>
			                    <li><img src="<c:url value='/image/tab2.png'/>"></li>
			                    <li><img src="<c:url value='/image/tab3.png'/>"></li>
			                    <li><img src="<c:url value='/image/tab4.png'/>"></li>
			                </ul>
			            </div>
			            <div id="tabContent">
			                <div><img src="<c:url value='/image/tab_img_01.jpg'/>"></div>
			                <div><img src="<c:url value='/image/tab_img_02.jpg'/>"></div>
			                <div><img src="<c:url value='/image/tab_img_03.jpg'/>"></div>
			                <div><img src="<c:url value='/image/tab_img_04.jpg'/>"></div>
			            </div>            		
            		</div>  <!-- tabMenuBox 끝 -->         
                </article>
                <article  id="content2"> <!-- 베스트 상품 -->   
            		<div id="productBox">
            			<h3>베스트 상품</h3>
            			<div class='product'>
            				<div><a href="#"><img src="<c:url value='/image/prd01.jpg'/>"></a></div>
            				<div><a href="#"><img src="<c:url value='/image/prd02.jpg'/>"></a></div>
            				<div><a href="#"><img src="<c:url value='/image/prd03.jpg'/>"></a></div>
            			</div>
            			<div class='product'>
            				<div><a href="#"><img src="<c:url value='/image/prd04.jpg'/>"></a></div>
            				<div><a href="#"><img src="<c:url value='/image/prd05.jpg'/>"></a></div>
            				<div><a href="#"><img src="<c:url value='/image/prd06.jpg'/>"></a></div>
            			</div>
					</div>         	
                </article>
            </section>
            
            <!-- BOTTOM -->
            <jsp:include page="/WEB-INF/views/jsp/bottom.jsp"  flush="true"/>
      </div>
   </body>
</html>