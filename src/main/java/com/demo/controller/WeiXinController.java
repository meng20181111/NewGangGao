package com.demo.controller;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.alibaba.fastjson.JSONObject;
import com.demo.service.MallHomeBannerService;
import com.demo.utill.ConfigureUtil;
import com.demo.utill.HttpRequestUtil;
import com.demo.utill.SessionManager;


/**
 * 微信授权控制类
 * @author Administrator
 *
 */
@RequestMapping("/weixin")
@Controller
public class WeiXinController extends BaseController{
	private static final Logger logger = Logger.getLogger(WeiXinController.class);
	
//	@Autowired
//	private PartnerService ps;
//	@Resource
//	private UserParamService userParamService;
//	@Resource
//	private UserService userService;
//	@Resource
//	private AllianceService alService;
	@Resource
	private MallHomeBannerService bannerService;
	/**
	 * 微信静默授权
	 * @return
	 */
	@RequestMapping("/authorize")
	public ModelAndView authorize() {
		String redirect = "";
		try {
			redirect = URLEncoder.encode(ConfigureUtil.WEIXINREDIRECT_URL.toString(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			logger.error(e);
		}
		String state = "";
		String url = "https://open.weixin.qq.com/connect/oauth2/authorize?"
				+ "appid="+ConfigureUtil.WEIXIN_APPKEY.toString()+"&redirect_uri="+redirect+"&response_type=code&scope=snsapi_userinfo&state="+state+"#wechat_redirect";
		ModelAndView model = new ModelAndView("redirect:"+url);
		return model;
	}
	/**
	 * 微信授权回调接口
	 * @param code  code作为换取access_token的票据，每次用户授权带上的code将不一样，code只能使用一次，5分钟未被使用自动过期。
	 * @param state 重定向后会带上state参数，开发者可以填写a-zA-Z0-9的参数值，最多128字节
	 * @return
	 */
	@RequestMapping("/callback")
	public ModelAndView callback(String code,String state) {
		
		logger.info("-------callback---进来了--------");
		Map<String,String> data = new HashMap<>();
		data.put("appid", ConfigureUtil.WEIXIN_APPKEY.toString());
		data.put("secret", ConfigureUtil.WEIXIN_SECKEY.toString());
		data.put("code", code);
		data.put("grant_type", "authorization_code");
		JSONObject result = HttpRequestUtil.sendPost("https://api.weixin.qq.com/sns/oauth2/access_token", data, null);
		String openid = result.getString("openid");
		openid="ABC";
		logger.info("-----------openid-="+openid);
		ModelAndView model = new ModelAndView("wap_home");
		if(openid!=null){
			model.addObject("OpenId", openid);
			
			model.addObject("banners",bannerService.findByType(1));
		}else{
			model=new ModelAndView("redirect:/weixin/authorize.do");
		}
		return model;
	}
	

}
