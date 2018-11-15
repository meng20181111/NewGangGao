<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<div class="bottom clearfix">
	<div class="fl sy" onclick="window.open('${pageContext.request.contextPath}/wap/home/index.do','_self');">
		<span>
			<img src="${pageContext.request.contextPath}/image/shopping/wap/sy.png" alt="" style="display: block;" />
			首页
		</span>
	</div>
	<div class="fl gw" onclick="window.open('${pageContext.request.contextPath}/cart/wap/myCart.do','_self');">
		<span ><img src="${pageContext.request.contextPath}/image/shopping/wap/gw.png" alt=""/></span>
	</div>
	<div class="fr wd" onclick="window.open('${pageContext.request.contextPath}/user/to/my.do','_self');">
		<span>
			<img src="${pageContext.request.contextPath}/image/shopping/wap/wd.png" alt="" style="display: block;" />
			我的
		</span>
	</div>
</div>
</body>
<script type="text/javascript">
	(function(){
		var url = window.location.href;
		if(url.indexOf('/user/')>0){
			$('.wd').find('img').attr("src","${pageContext.request.contextPath}/image/shopping/wap/wd_2.png");
		}else{
			$('.sy').find('img').attr("src","${pageContext.request.contextPath}/image/shopping/wap/sy_2.png");
		}
	})()
</script>
</html>