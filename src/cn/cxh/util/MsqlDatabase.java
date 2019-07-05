package cn.cxh.util;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;

public class MsqlDatabase {
    private static final String driver=ConfigManager.getProperties("driver");
    private static final String url=ConfigManager.getProperties("url");
    private static final String user=ConfigManager.getProperties("user");
    private static final String pwd=ConfigManager.getProperties("password");
    private  Connection connection=null;
    public MsqlDatabase(){
        try {
            System.out.println(driver);
            Class.forName(driver);
            try {
                this.connection=DriverManager.getConnection(url,user,pwd);
                System.out.println(this.connection.toString());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

//    static {
//        try {
//            Class.forName(driver);
//            try {
//                connection=DriverManager.getConnection(url,user,pwd);
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//    }

    public  Connection getConnection(){
//        Context ctx;
//        // 获取连接并捕获异常
//        try {
//            ctx=new InitialContext();
//            DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
//            connection=ds.getConnection();
//        } catch (NamingException e) {
//            e.printStackTrace();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

        return this.connection;
    }

    /**
     * 关闭数据库连接
     */
    public void close(){
        if(this.connection != null){
            try {
                this.connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

//    public static void closeAll(Connection connection, Statement statement, ResultSet resultSet){
//
//        try {
//            if (resultSet!=null&&!resultSet.isClosed()){
//                resultSet.close();
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException("关闭结果集失败");
//        }
//
//        try {
//            if (statement!=null&&!statement.isClosed()){
//                statement.close();
//            }
//        } catch (SQLException e) {
//           throw new RuntimeException("关闭sql执行对象失败");
//        }
//        if(connection!=null) {
//            try {
//                connection.close();
//            } catch (SQLException e) {
//                throw  new RuntimeException("关闭连接对象失败");
//            }
//        }
//
//
//    }

}
