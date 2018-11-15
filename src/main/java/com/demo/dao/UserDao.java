package com.demo.dao;

import java.util.List;

import com.demo.bean.User;

public interface UserDao {
 public List<User> getUserList()throws Exception;
}
