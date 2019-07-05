package cn.cxh.service.impl;/*
  Created by IntelliJ IDEA.
  Package: cn.cxh.service.impl
  User: myischenxiaohua@163.com
  Date: 2019/6/27
  Time: 11:00
*/

import cn.cxh.dao.UserDao;
import cn.cxh.dao.impl.UserDaoImpl;
import cn.cxh.entity.User;
import cn.cxh.service.UserService;
import cn.cxh.util.MsqlDatabase;

import java.sql.Connection;
import java.sql.SQLException;

public class UserServiceImpl implements UserService {
   // private MsqlDatabase msql=new MsqlDatabase();
    @Override
    public User getUser(User user) {

        try {
            user= new UserDaoImpl().findUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public boolean addUser(User user) {
        System.out.println("adduser");
        boolean flag=false;
        UserDao userDao=new UserDaoImpl();
        try {
            if((userDao.insertUser(user))>0){
                flag=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return  flag;
    }
}
