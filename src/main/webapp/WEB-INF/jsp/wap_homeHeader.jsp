<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style type="text/css">
.swiper-pagination .swiper-pagination-bullet-active {
	background: white;
}
</style>
</head>
<body>

 	<div class="clearfix" style="width: 100%; background-color: #FDFBE6;display:none;" id="radio">
		<img
			src="${pageContext.request.contextPath}/image/shopping/wap/gonggao.png"
			style="width: 0.7rem; height: 0.7rem; margin-left: 0.592rem; margin-top: 0.35rem;"
			class="fl" alt="" />
		<div id="demo" class="qimo8 fl" >
			<div class="qimo">
				<div id="demo1">
					<ul>
						<c:forEach var="radio" items="${radios}" varStatus="status">
							<li id="${radio.id}"><span>${radio.details}</span></li>
						</c:forEach>
					</ul>
				</div>
				<div id="demo2"></div>
			</div>
		</div>
	</div>
	
	<div class="top clearfix">
		<img
			src="${pageContext.request.contextPath}/image/shopping/wap/logo_left.png"
			class="fl logo" alt="" />
		<form action="${pageContext.request.contextPath}/product/goSearch.do"
			class="fl">
			<input type="text" class="sousuo" name="like" placeholder="输入特产名称" />
			<img class="span"
				src="${pageContext.request.contextPath}/image/shopping/wap/sousuo.png"
				alt="">
		</form>
		<a href="${pageContext.request.contextPath}/tidings/showMsg.do"
			class="fr xiaoxi"><img
			src="${pageContext.request.contextPath}/image/shopping/wap/xiaosi_right.png"
			alt="" /><em></em></a>
	</div> 

	<!-- 产品活动图! -->
	<div class="banner swiper-container" id="swiper1">
		<div class="swiper-wrapper">
		<c:forEach var="banner" items="${banners}" varStatus="status">
		<img class="swiper-slide" src="${pageContext.request.contextPath}/image/showImage.do?image=${banner.images}" 
		onClick="goTo('${banner.image_path}');"/>
		</c:forEach>
		</div>
		<div class="swiper-pagination"></div>
	</div>

</body>
<script type="text/javascript">
	new Swiper('#swiper1', {
		pagination : '.swiper-pagination',
		preventLinksPropagation : false,
		loop : true,
		autoplay : 4000,
		autoplayDisableOnInteraction : false,
	// 		effect : 'fade',
	});
	(function(){
		/* var tidings = ${tidings};
		if(tidings>0){
			$('.xiaoxi em').show();
		} */
	}())
	function goTo(path){
		if(path==''||path.replace(/^\s+|\s+$/g,'')==''){
			
		}else{
			document.location.href = path;			
		}
	}
</script>
</html>