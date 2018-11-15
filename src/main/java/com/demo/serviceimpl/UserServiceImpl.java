package com.demo.serviceimpl;

import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	public static final Logger log=Logger.getLogger(UserServiceImpl.class);
	@Autowired
private UserDao ud;
	@Override
	public List<User> getUserList() {
		List<User> list=Collections.emptyList();
		try {
			list=ud.getUserList();
		} catch (Exception e) {
			log.info("查询学生列表数据异常："+e);
			e.printStackTrace();
		}
		return list;
	}

}
