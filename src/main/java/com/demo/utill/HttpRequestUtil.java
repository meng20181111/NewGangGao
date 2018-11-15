package com.demo.utill;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSONObject;

public class HttpRequestUtil {

	/**
	 * 判断是否来自手机访问
	 * @param request
	 * @return
	 */
	public static boolean isMobile(HttpServletRequest request) {
		
		boolean isMoblie = false;  
        String[] mobileAgents = { "iphone", "android", "phone", "mobile", "wap", 
        		"netfront", "java", "opera mobi","opera mini","ucweb", "ucbrowser", "windows ce", 
        		"symbian", "series", "webos", "sony", "blackberry", "dopod",  "nokia", 
        		"samsung", "palmsource", "xda", "pieplus", "meizu", "midp", "cldc", 
        		"motorola", "foma", "docomo", "up.browser", "up.link", "blazer", "helio", 
        		"hosin", "huawei", "novarra", "coolpad", "webos",  "techfaith", "palmsource", 
        		"alcatel", "amoi", "ktouch", "nexian","ericsson", "philips", "sagem",
        		"wellcom", "bunjalloo", "maui","smartphone", "iemobile", "spice", "bird", 
        		"zte-", "longcos","pantech", "gionee", "portalmmm", "jig browser", "hiptop", 
        		"benq", "haier", "^lct", "320x320", "240x320", "176x220", "w3c ", "acs-", 
        		"alav", "alca", "amoi", "audi", "avan", "benq", "bird", "blac","blaz", 
        		"brew", "cell", "cldc", "cmd-", "dang", "doco", "eric", "hipt", "inno", 
        		"ipaq", "java", "jigs","kddi", "keji", "leno", "lg-c", "lg-d", "lg-g", 
        		"lge-", "maui", "maxo", "midp", "mits", "mmef", "mobi","mot-", "moto", 
        		"mwbp", "nec-", "newt", "noki", "oper", "palm", "pana", "pant", "phil", 
        		"play", "port","prox", "qwap", "sage", "sams", "sany", "sch-", "sec-", 
        		"send", "seri", "sgh-", "shar", "sie-", "siem","smal", "smar", "sony", 
        		"sph-", "symb", "t-mo", "teli", "tim-", "tosh", "tsm-", "upg1", "upsi", 
        		"vk-v","voda", "wap-", "wapa", "wapi", "wapp", "wapr", "webc", "winw", 
        		"winw", "xda", "xda-","Googlebot-Mobile" };  
        if (request.getHeader("User-Agent") != null) {  
            for (String mobileAgent : mobileAgents) {
                if (request.getHeader("User-Agent").toLowerCase().indexOf(mobileAgent) >= 0) {  
                    isMoblie = true;  
                    break;  
                }  
            }  
        }
		return isMoblie;
	}
	public static JSONObject sendPost(String url,Map<String,String> data,String last) {
		 PrintWriter out = null;
	        BufferedReader in = null;
	        String result = "";
	        String param = "";
	        if(data!=null) {
	        	String g = "";
	        	Iterator<String> keys = data.keySet().iterator();
	        	while(keys.hasNext()) {
	        		param +=g;
	        		g="&";
	        		String key = keys.next();
	        		param += key+"="+data.get(key);
	        	}
	        }
	        if(last!=null) {
	        	param += last;
	        }
	        try {
	            URL realUrl = new URL(url);
	            // 打开和URL之间的连接
	            URLConnection conn = realUrl.openConnection();
	            // 设置通用的请求属性
	            conn.setRequestProperty("accept", "*/*");
	            conn.setRequestProperty("connection", "Keep-Alive");
	            conn.setRequestProperty("user-agent",
	                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
	            // 发送POST请求必须设置如下两行
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            // 获取URLConnection对象对应的输出流
	            out = new PrintWriter(conn.getOutputStream());
	            // 发送请求参数
	            out.print(param);
	            // flush输出流的缓冲
	            out.flush();
	            // 定义BufferedReader输入流来读取URL的响应
	            in = new BufferedReader(
	                    new InputStreamReader(conn.getInputStream()));
	            String line;
	            while ((line = in.readLine()) != null) {
	                result += line;
	            }
	        } catch (Exception e) {
	            System.out.println("发送 POST 请求出现异常！"+e);
	            e.printStackTrace();
	        }
	        //使用finally块来关闭输出流、输入流
	        finally{
	            try{
	                if(out!=null){
	                    out.close();
	                }
	                if(in!=null){
	                    in.close();
	                }
	            }
	            catch(IOException ex){
	                ex.printStackTrace();
	            }
	        }
	        return JSONObject.parseObject(result);
	    }    
}
