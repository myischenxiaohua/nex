package cn.cxh.dao.impl;

import cn.cxh.util.MsqlDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
    private Connection connection=new MsqlDatabase().getConnection();
    private PreparedStatement preparedStatement=null;
//    public BaseDao(Connection conn){
//        this.connection=conn;
//    }

    public int update(String sql,Object... pm) throws SQLException {
            System.out.println("as:"+this.connection.toString());
            this.preparedStatement=this.connection.prepareStatement(sql);
            for (int i=0;i<pm.length;i++){
                this.preparedStatement.setObject(i+1,pm[i]);
            }
            System.out.println(this.preparedStatement.toString());
             return this.preparedStatement.executeUpdate();
    }


    public ResultSet query(String sql,Object... pm) throws SQLException {

            System.out.println(sql);
            this.preparedStatement= this.connection.prepareStatement(sql);
            for (int i=0;i<pm.length;i++){
                this.preparedStatement.setObject(i+1,pm[i]);
            }

            System.out.println(this.preparedStatement);

        return this.preparedStatement.executeQuery();

    }
}
