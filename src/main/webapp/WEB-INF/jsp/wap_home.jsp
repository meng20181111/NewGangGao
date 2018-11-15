<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath}">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商城首页</title>
<!-- 当前网站样式！ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common/swiper-3.4.2.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shopping/wap/index.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shopping/wap/index_cs.css" />
<!-- 清楚默认样式&公共样式! -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shopping/wap/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/common/layui/css/layui.css" />
<script
	src="${pageContext.request.contextPath}/js/common/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/common/swiper-3.4.2.min.js"></script>
<!-- 网站根字体! -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/shopping/wap/web.js"></script>
<style type="text/css">
.xiaoxi em {
	background-image:
		url(${pageContext.request.contextPath}/image/shopping/wap/redPoint.png);
	position: absolute;
	width: 32px;
	height: 32px;
	background-size: 32px 32px;
	float: right;
	right: 0.5rem;
	background-repeat: no-repeat;
	display: none;
}

.layui-flow-more a.more{
	width: 6.755rem;
	height: 2.014rem;
	display: block;
	text-algin: center;
	line-height: 2.08rem;
	background:url(${pageContext.request.contextPath}/image/shopping/wap/home_more.png) no-repeat center center;
	background-size: cover;
	color: #FFFFFF;
	margin: 0 auto;
	margin-top: 1.5rem;
}

</style>
</head>
<body>

	<!-- top! -->
	<%@include file="./wap_homeHeader.jsp"%>



	<!-- 主体! -->
	<div class="nav">

		<div class="tab" js-tab="1">
			<!-- 导航 -->
			<div class="tab-title clearfix">
				<span class="item item-cur0" id="product" index="0"> <img
					class="tou"
					src="${pageContext.request.contextPath}/image/shopping/wap/chaoshi.png"
					alt="" /> 炊烟生活商城
				</span> <span class="item" id="market" style="color: #1f37a5;" index="1">
					<img class="tou"
					src="${pageContext.request.contextPath}/image/shopping/wap/xianxia.png"
					alt="" /> 线下生活超市
				</span>
				<div
					style="position: relative; height: 0.06rem; width: 100%; overflow: hidden;">
					<span
						style="position: relative; width: 50%; display: inline-block; overflow: hidden;"><span
						class="xian"></span></span><span
						style="position: relative; width: 50%; display: inline-block; overflow: hidden;"><span
						class="xian2"></span></span>
				</div>
			</div>
			<!-- 内容 -->
			<div class="tab-cont swiper-container" id="tab-cont"
				style="height: auto;">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div id="div1" style="padding-bottom: 10%"></div>
						<ul class="bottom_logo">
							<li><i
			onclick="window.open('${pageContext.request.contextPath}/wap/home/index.do','_self');">
				店铺首页</i><span>|</span><i
			onclick="window.open('${pageContext.request.contextPath}/page/shopping/wap_us.jsp','_self');">
				关于我们</i><span>|</span><i
			onclick="window.open(' ${pageContext.request.contextPath}/page/shopping/wap_join.jsp','_self');">
				加盟代理</i></li>
							<li class="clearfix" style="margin-top: 0.8rem;"><img
								src="${pageContext.request.contextPath}/image/shopping/wap/erweima.png"
								style="width: 2.5rem; height: 2.5rem; margin-left: 4.27rem;"
								alt="" class="fl" /> <img
								src="${pageContext.request.contextPath}/image/shopping/wap/bottom_logo.png"
								style="width: 4.27rem; margin-left: 0.3rem; margin-top: 0.4rem;"
								alt="" class="fl" /></li>
						</ul>
					</div>
					<div class="swiper-slide">
						<div id="div2" style="padding-bottom: 10%">
							<div style="display: none; text-align: center;">定位中，请稍等...</div>
						</div>
						<ul class="bottom_logo" style="margin-bottom: 1.4rem;">
							<li><a
								href="${pageContext.request.contextPath}/wap/home/index.do"
								style="color: #7A7A7A;">店铺首页</a><span>|</span> <a
								href="${pageContext.request.contextPath}/page/shopping/wap_us.jsp">关于我们</a><span>|</span>
								<a
								href="${pageContext.request.contextPath}/page/shopping/wap_join.jsp">加盟代理</a>
							</li>
							<li class="clearfix" style="margin-top: 0.8rem;"><img
								src="${pageContext.request.contextPath}/image/shopping/wap/erweima.png"
								style="width: 2.5rem; height: 2.5rem; margin-left: 4.27rem;"
								alt="" class="fl" /> <img
								src="${pageContext.request.contextPath}/image/shopping/wap/bottom_logo.png"
								style="width: 4.27rem; margin-left: 0.6rem; margin-top: 0.4rem;"
								alt="" class="fl" /></li>
							<li><span class="tpl" style="margin-top: 0.5rem; display: inline-block;">客服电话：400-700-6300</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="container" style="display: none"></div>
	
	<a href="javascript:scroll(0,0)" class="fhdb"></a>
	
	<!-- 页脚导航 -->
<%-- 	<%@include file="./wap_footer.jsp"%> --%>

<%-- 	<script src="${pageContext.request.contextPath}/js/common/websocket.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/js/common/layui/layui.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="https://3gimg.qq.com/lightmap/components/geolocation/geolocation.min.js"></script>
	<script charset="utf-8" src="https://map.qq.com/api/js?v=2.exp&libraries=drawing,geometry,autocomplete,convertor"></script>
	<!-- 	<script type="text/javascript" -->
	<!-- 		src="http://webapi.amap.com/maps?v=1.4.1&key=8b5743b74e8bb209ca3da09cefa7f69b&plugin=AMap.Transfer,AMap.Scale,AMap.OverView,AMap.ToolBar,AMap.CitySearch"></script> -->
</body>

<script type="text/javascript">
	$(document).scroll(function(){
			if($(document).scrollTop() >= 40){
			
				$(".fhdb").css("opacity","1");
			}else{
				$(".fhdb").css("opacity","0");
			}
		})
</script>

<script type="text/javascript">

var layPage = {currentPage1:0,currentPage2:0}
var proUrl = '<%=response.encodeURL(request.getContextPath() + "/product/findPro.do")%>';
	var marketUrl = '';
	var supermarket;
	var urlIndex = 0;
	layui.use('flow',function() {
						var flow = layui.flow;
						var product = function() {
							flow.load({
										elem : '#div1' , //流加载容器
										end : '<a href="${pageContext.request.contextPath}/product/goSearch.do" class="more">查看更多</a>',
										isAuto : false
										//,mb:400
										// 		   	,scrollElem: '#div1' //滚动条所在元素，一般不用填，此处只是演示需要。
										,
										done : function(page, next) { //执行下一页的回调
											$.post(proUrl,{
																currentPage : layPage.currentPage1++,
																pageSize : 3,
																order : 'recommendation',
																up : 1
															},
															function(data) {
																var code = data.code;
																if (code == 3) {

																}
																if (parseInt(code) == 0) {
																	var result = JSON.parse(data.result);
																	//模拟数据插入
																	var lis = [];
																	for (var i = 0; i < result.length; i++) {
																		lis.push('<div class="box clearfix" gid="'+result[i].id+'" data-type="0"><a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/showImage.do?image='
																						+ result[i].imgSmall
																						+ '" class="fl cs" alt=""></a><ul class="fl"><li style="margin-bottom: 0.2rem;"><a href="javascript:void(0);">'
																						+ result[i].name
																						+ '</a></li><li style="margin-bottom: 0.829rem;" class="li">'
																						+ result[i].details
																						+ '</li><li><span class="fl"><em>￥</em>'
																						+ result[i].current
																						+ '</span><i class="guige">'+result[i].json+'</i><span class="fr">产地：'
																						+ result[i].area
																						+ '</span></li></ul></div>')
																	}
																	//执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
																	//pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
																	next(
																			lis.join(''),
																			layPage.currentPage1 < data.totalPage); //假设总页数为 10
																}

															}, 'json');
										}
									});
						}
						supermarket = function() {
							if(marketUrl==''){
								return false;
							}
							flow.load({elem : '#div2', //流加载容器
										end : '<a href="${pageContext.request.contextPath}/market/goSearch.do?lat='+a.lat+'&lng='+a.lng+'" class="more">查看更多</a>'
										,isAuto : false
										//,mb:400
										//,scrollElem: '#div1' //滚动条所在元素，一般不用填，此处只是演示需要。
										,done : function(page, next) { //执行下一页的回调
											$.post(marketUrl,{
																currentPage : layPage.currentPage2,
																pageSize : 3
															},
															function(data) {
																var code = data.code;
																if (code == 3) {
																}
																if (parseInt(code) == 0) {
																	var result = JSON.parse(data.result);
																	//模拟数据插入
																	var lis = [];
																	for (var i = 0; i < result.length; i++) {
																		var lng = result[i].lng;
																		var lat = result[i].lat;
																		var html = dis(lat,lng);
																		lis.push('<div class="box clearfix" gid="'+result[i].id+'" data-type="1">'
																						+ '<a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/showImage.do?image='
																						+ result[i].imgSmall
																						+ '" class="fl cs" alt=""></a>'
																						+ '<ul class="fl">'
																						+ '<li style="margin-bottom: 0.2rem;"><a href="javascript:void(0);">'
																						+ result[i].name
																						+ '</a></li>'
																						+ '<li class="li" style="margin-bottom: 0.962rem;">'
																						+ result[i].details
																						+ '</li>'
																						+ '<li class="li2"><img src="${pageContext.request.contextPath}/image/shopping/wap/dd.png" class="cp" alt="" /><span>'
																						+ html
																						+ '</span></li>'
																						+ '</ul>'
																						+ '</div>')
																	}
																	//执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
																	//pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
																	next(lis.join(''),++layPage.currentPage2 < data.totalPage); //假设总页数为 10
																}

															}, 'json');
										}
									});
						}
						$('.tab-title .item').on('click', function() {
							$('.tab-title').find('span').each(function() {
								$(this).removeClass('item-cur0');
								$(this).removeClass('item-cur1');
							});
							urlIndex = $(this).attr('index');
							$(this).addClass('item-cur' + urlIndex);
							if (urlIndex == 0) {

							} else {
								if (marketUrl == '') {
									var inter = setInterval(function() {
										if (marketUrl != '') {
											clearInterval(inter);
											divClear2();
											return false;
										} else {
											$('#div2>div').show();
										}

									}, 200);
								}
							}
						});

						function divClear1() {
							$('#div1').html('');
							layPage.currentPage1 = 0;
							product();
						}
						function divClear2() {
							if(marketUrl == ''){
								$('#div2').html('<div style="text-align: center;">定位中，请稍等...</div>');								
							}else{
								$('#div2').html('');								
								layPage.currentPage2 = 0;
								supermarket();
							}
						}

						$('#div1').on('click','.box',
										function() {
											var gid = $(this).attr('gid');
											window.location.href = '${pageContext.request.contextPath}/product/details.do?gid='+ gid;

										});
						$('#div2').on('click','.box',
										function() {
											var str = '&lng='+a.lng+'&lat='+a.lat;
											var gid = $(this).attr('gid');
											window.location.href = '${pageContext.request.contextPath}/market/details.do?gid='+ gid+str;
										});
						var showTime = 300;
						var place = '${place}';
						if (place == '') {
							place = 0;
						}
						product();
						var mySwiper = new Swiper('#tab-cont', {
							initialSlide : place,
							onSlideChangeEnd : function(swiper) {
								if (swiper.activeIndex == 1) {
									divClear1();
									$(".xian").animate({
										right : "-100%",
									}, showTime);
									$(".xian2").animate({
										left : "0%",
									}, showTime);
									window.location.href = "javascript:scroll(0,0)";
								} else {
									divClear2();
									$(".xian").animate({
										right : "0%",
									}, showTime);
									$(".xian2").animate({
										left : "-100%",
									}, showTime);
									window.location.href = "javascript:scroll(0,0)";
								}
							},
							prevButton : '#product',
							nextButton : '#market'
						});
						var timeout = 0;
						$(document).on('touchmove',	function() {
											if (timeout != 0) {
											} else {
												timeout = setTimeout(
														function() {
															switch (mySwiper.activeIndex) {
															case 0:
																//	 				console.log($('#div1').find('a').last());
																$('#div1 .layui-flow-more').find('a')&& $('#div1 .layui-flow-more').find('a').click();
																break;
															case 1:
																$('#div2 .layui-flow-more').find('a')&& $('#div2 .layui-flow-more').find('a').click();
																break;
															}
															timeout = 0;
														}, 500);
											}

										});
					});
	//高德地图
	// 	var a, b = [];
	// 	var map = new AMap.Map('container');
	// 	map.plugin('AMap.Geolocation', function() {
	// 		geolocation = new AMap.Geolocation({
	// 			enableHighAccuracy : true,//是否使用高精度定位，默认:true
	// 			timeout : 10000, //超过10秒后停止定位，默认：无穷大
	// 			maximumAge : 0, //定位结果缓存0毫秒，默认：0
	// 			convert : true, //自动偏移坐标，偏移后的坐标为高德坐标，默认：true
	// 			showButton : false, //显示定位按钮，默认：true
	// 			buttonPosition : 'LB', //定位按钮停靠位置，默认：'LB'，左下角
	// 			buttonOffset : new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
	// 			showMarker : true, //定位成功后在定位到的位置显示点标记，默认：true
	// 			showCircle : true, //定位成功后用圆圈表示定位精度范围，默认：true
	// 			panToLocation : false, //定位成功后将定位到的位置作为地图中心点，默认：true
	// 			zoomToAccuracy : false
	// 		//定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
	// 		});
	// 		map.addControl(geolocation);
	// 		geolocation.getCurrentPosition(callback);
	// 	});
	// var lnglat;
	// 	function callback(status, result) {
	// 		if (status == 'complete') {//获取定位成功
	// 			lnglat = new AMap.LngLat(result.position.getLng(), result.position
	// 					.getLat());
	// 			marketUrl = '${pageContext.request.contextPath}/market/findMarket.do?lng='
	// 					+ result.position.getLng()
	// 					+ '&lat='
	// 					+ result.position.getLat();
	// 			supermarket();
	// 		}
	// 		if (status == 'error') {//获取定位失败

	// 		}
	// 	}
	// function dis(lat, lng) {
	// 		var distance = lnglat.distance([ lng, lat ]);
	// 		var dis = parseInt(distance);
	// 		var html = '';
	// 		if (dis > 1000) {
	// 			var d = dis / 1000;
	// 			html = d.toFixed(2) + 'km';
	// 		} else {
	// 			html = dis + 'm';
	// 		}
	// 		return html;
	// 	}
	var a, b = [];
	var getMarket = true;
	var geolocation = new qq.maps.Geolocation("OTDBZ-YHAKP-BVGDB-L26G3-7JI3E-5QBCK", "商城地图");
	geolocation.watchPosition(function(position) {//获取地理位置后请求超市接口列表
				var currentLat = position.lat;
				var currentLon = position.lng;
				a = new qq.maps.LatLng(currentLat, currentLon);
				marketUrl = '${pageContext.request.contextPath}/market/findMarket.do?lng='+ currentLon + '&lat=' + currentLat;
				if(getMarket){
					console.log(a);
					supermarket();	
					getMarket = false;
				}
			});
	function dis(lat, lng) {
		b = new qq.maps.LatLng(lat, lng);
		var distance = qq.maps.geometry.spherical.computeDistanceBetween(a, b);
		var dis = parseInt(distance);
		var html = '';
		if (dis > 1000) {
			var d = dis / 1000;
			html = d.toFixed(2) + 'km';
		} else {
			html = dis + 'm';
		}
		return html;
	}
	//处理消息部分
	onMessage = function(data) {
		data = JSON.parse(data);
		if(data.type==0){//广播类信息
			if(data.handle=="ADD"){//添加新的广播
				$('#radio').show();
				$('#radio').find('ul').append('<li id="'+data.content.id+'"><span>'+data.content.details+'</span></li>')
			}else if(data.handle=="DEL"){//删除广播
				$("#radio ul li[id='"+data.content.id+"']").remove();
				if($('#radio ul:first li').length==0){
					$('#radio').hide();
				}
			}
		}else if(data.type==1){//消息类信息
			if(data.handle=="ADD"){
				$('.xiaoxi em').show();
			}else if(data.handle=="DEL"){
				
			}
		}
	}
	if($('#radio ul:first li').length>0){
		$('#radio').show();
	}
</script>

<script type="text/javascript">
	var demo = document.getElementById("demo");
	var demo1 = document.getElementById("demo1");
	var demo2 = document.getElementById("demo2");
	demo2.innerHTML = document.getElementById("demo1").innerHTML;

	function Marquee() {
		if (demo.scrollLeft - demo2.offsetWidth >= 0) {
			demo.scrollLeft -= demo1.offsetWidth;
		} else {
			demo.scrollLeft++;
		}
	}
	var myvar = setInterval(Marquee, 30);
	demo.onmouseout = function() {
		myvar = setInterval(Marquee, 30);
	}
	demo.onmouseover = function() {
		clearInterval(myvar);
	}
</script>

<script type="text/javascript">
	(
			function() {
				var isNed = false;
				var height = $('.tab-title').height();
				$(window).scroll(
						function() {
							var top = $('.tab-title').offset().top - $(document).scrollTop();
							if (top < 0 && !isNed) {
								isNed = true;
								$('.tab-title').css({
									"position" : "fixed",
									"top" : "0",
								});
								return true;
							}
							var childTop = $('.tab-cont').offset().top - $(document).scrollTop();
							if (childTop > height && isNed) {
								isNed = false;
								$('.tab-title').css({
									"position" : "",
									"top" : "",
								});

							}
						});
			})()
</script>
</html>