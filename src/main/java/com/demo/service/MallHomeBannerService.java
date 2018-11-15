package com.demo.service;

import java.util.List;

import com.demo.bean.MallHomeBanner;


public interface MallHomeBannerService {

	boolean updateImage(String id,String images);
	boolean updatePath(String id,String path);
	MallHomeBanner fetchById(String id);
	boolean delete(String id);
	List<MallHomeBanner> findByType(Integer type);
	boolean insert(MallHomeBanner banner);
}
