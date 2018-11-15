package com.demo.serviceimpl;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.demo.bean.MallHomeBanner;
import com.demo.dao.IMallHomeBannerDao;
import com.demo.service.MallHomeBannerService;


@Service
public class MallHomeBannerServiceImpl implements MallHomeBannerService {
	private static final Logger logger = Logger.getLogger(MallHomeBannerServiceImpl.class);
	
	@Resource
	private IMallHomeBannerDao bannerDao;
	
	@Override
	public boolean updateImage(String id, String images) {
		boolean res = false;
		try {
			bannerDao.updateImage(id, images);
			res = true;
		} catch (Exception e) {
			logger.error("",e);
		}
		return res;
	}

	@Override
	public MallHomeBanner fetchById(String id) {
		try {
			return bannerDao.fetchById(id);
		} catch (Exception e) {
			logger.error("",e);
			return null;
		}
	}

	@Override
	public boolean updatePath(String id, String path) {
		boolean res = false;
		try {
			bannerDao.updatePath(id, path);
			res = true;
		} catch (Exception e) {
			logger.error("",e);
		}
		return res;
	}

	@Override
	public boolean delete(String id) {
		boolean res =false;
		try {
			bannerDao.delete(id);
			res = true;
		} catch (Exception e) {
			logger.error("",e);
		}
		return res;
	}

	@Override
	public List<MallHomeBanner> findByType(Integer type) {
		List<MallHomeBanner> banners = Collections.emptyList();
		try {
			banners = bannerDao.findByType(type);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return banners;
	}

	@Override
	public boolean insert(MallHomeBanner banner) {
		boolean res = false;
		try {
			bannerDao.insert(banner);
			res = true;
		} catch (Exception e) {
			logger.error("",e);
		}
		return res;
	}

}
