package cn.cxh.dao.impl;

import cn.cxh.dao.UserDao;
import cn.cxh.entity.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User findUser(User user) throws SQLException {
        return null;
    }

    @Override
    public int insertUser(User user) throws SQLException {
        String sql="insert into news_users(uname,upwd) values(?,?)";
        System.out.println("insertUser");
        return 0;
       // return super.update(sql,user.getuName(),user.getuPwd());

    }
//    public UserDaoImpl(Connection connection) {
//        super(connection);
//    }

//    @Override
//    public User findUser(User user) throws SQLException {
//        String sql="select * from news_users where uname=?";
//        ResultSet resultSet=super.query(sql,user.getuName());
//        if (resultSet.next()){
//            user.setId(resultSet.getInt("uid"));
//            user.setuName(resultSet.getString("uname"));
//            user.setuPwd(resultSet.getString("upwd"));
//            user.setRole(resultSet.getInt("role"));
//        }
//        return user;
//    }
//
//    @Override
//    public int insertUser(User user) throws SQLException {
//
//        String sql="insert into news_users(uname,upwd) values(?,?)";
//        System.out.println("insertUser");
//        return super.update(sql,user.getuName(),user.getuPwd());
//
//    }

}
