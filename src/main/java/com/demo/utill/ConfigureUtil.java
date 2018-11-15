package com.demo.utill;

import java.io.IOException;
import java.util.Properties;

public enum ConfigureUtil {
	NEW_IMAGE("new_image"), DAILY_IMAGE("daily_image"), PROINFO_IMAGE("proInfo_image"), WAP_PRODCUT_IMAGE(
			"productType_image"), PRODUCT_IMAGE("product_image"),FOOTMARK_DAYS("footmarkdays")
	,ALIBABA_APPKEY("alibabaAppKey"),ALIBABA_SECKEY("alibabaSecKey"),ALIBABA_SERVERHOST("alibabaServerHost")
	,ALIBABA_HTTPPORT("alibabaHttpPort"),ALIBABA_HTTPSPORT("alibabaHttpsPort"),ALIBABA_USERID("alibabaUserId")
	,PRODUCT_EVALUATE("product_evaluate"),WEIXIN_APPKEY("weixinAppKey"),WEIXIN_MCHID("weixinMchID")
	,WEIXIN_NOTIFY_URL("weixinNotify_url"),WEIXIN_SECKEY("weixinSecKey"),WEIXINREDIRECT_URL("weixinRedirect_url"),REDIRECTURL("Redirecturl")
	,WEIXIN_MCHSEC("weixinMchSec"),WEIXIN_ADDMEM("weixinAddMember"),WEIXIN_AUTHORITY("weixinAuthorize"),TC_Y_CHAO("tc_y_chao")
	,TC_D_CHAO("tc_d_chao"),TC_D_O("tc_d_o"),TC_Y_O("tc_y_o"),TC_DZ_O("tc_dz_o"),TC_DZ_CHAO("tc_dz_chao"),DTIME("dtime")
	,D_k_jj("d_k_jj"),D_k_cj("d_k_cj"),D_k_jq("d_k_jq"),D_k_cq("d_k_cq"), D_y("d_y"),
	Q_k_jj("q_k_jj"),Q_k_cj("q_k_cj"),Q_k_jq("q_k_jq"),Q_k_cq("q_k_cq"), Q_y("q_y");
	private Properties configure = new Properties();
	private String key;

	private ConfigureUtil(String key) {
		try {
			configure.load(ConfigureUtil.class.getClassLoader().getResourceAsStream("configure.properties"));
		} catch (IOException e) {
			System.out.println("configure.properties异常！");
			e.printStackTrace();
		}
		this.key = key;
	}

	@Override
	public String toString() {
		return configure.getProperty(key);
	}

}
