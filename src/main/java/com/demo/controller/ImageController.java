package com.demo.controller;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.utill.ConfigureUtil;
import com.demo.utill.HttpRequestUtil;



@RequestMapping("/image")
@Controller
public class ImageController {
	Logger logger = Logger.getLogger(ImageController.class);
	/**
	 * 
	 * @param type
	 * @param image
	 * @param source  请求来源 0是移动端
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping("/showImage")
	public void showImage(Integer type,String image,HttpServletResponse response,HttpServletRequest request) throws IOException {
		OutputStream out = null;
		InputStream in = null;
		BufferedImage tag = null;
		boolean source = HttpRequestUtil.isMobile(request);
		try {
			String path = "";
			if(type==null) {
				path =ConfigureUtil.PRODUCT_IMAGE.toString();				
			}else if(type==1) {
				path = ConfigureUtil.PRODUCT_EVALUATE.toString();
				
			}
			path += image.replace("_", "/");
			System.out.println("path=:"+path);
			out = response.getOutputStream();
			response.setContentType("image/*"); //图片
			File file = new File(path);
			if(image==null||image.isEmpty()||!file.exists()) {//如果不存在则获取默认图片
				source = false;
				in = request.getServletContext().getResourceAsStream("image/common/404.jpg");
			}else if(source){//对移动端图片请求进行压缩
				BufferedImage src = javax.imageio.ImageIO.read(file); 
				long length = file.length();
				if(length>80*1024) {//超过80kb进行压缩
					int widthdist = src.getWidth(null); // 得到源图宽  
					int heightdist = src.getHeight(null); // 得到源图高  ;
					if (widthdist == 0 || heightdist == 0) {  
						return;  
					} else {  
						widthdist = (int) (widthdist * 0.8);  
						heightdist = (int) (heightdist * 0.8);  
					}  
					// 开始读取文件并进行压缩  
					tag = new BufferedImage((int) widthdist,  
							(int) heightdist, BufferedImage.TYPE_INT_RGB);  
					
					tag.getGraphics().drawImage(  
							src.getScaledInstance(widthdist, heightdist,  
									Image.SCALE_SMOOTH), 0, 0, null);  					
				}else {
					in = new FileInputStream(file);
					source = false;
				}
			}else{
				in = new FileInputStream(file);
			}
		} catch (IOException e) {
			logger.error("image="+image,e);
		}finally {
			try {
				if(source) {
					String formatName = image.substring(image.indexOf(".")+1, image.length());
					ImageIO.write(tag, formatName, out);
				}else {
					byte[] data = new byte[0];
					if(in!=null) {
						int size = in.available();
						data = new byte[size];
						in.read(data);
						in.close();
					}
					if(out!=null) {
						out.write(data);
					}		
				}
				out.flush();
				out.close();
				out = null;
			} catch (IOException e) {
				if(out!=null) {
					out.close();
					out = null;
				}
			}    
		}
	}
}
