package com.atguigu.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.pool.DruidPooledConnection;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtils {
    private static DruidDataSource dataSource;
    private static ThreadLocal<Connection> conns = new ThreadLocal<>();
    static {
        try {
            Properties prop = new Properties();
            //利用反射得到配置文件的流
            InputStream is = JDBCUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            //加载流
            prop.load(is);
            dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(prop);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static Connection getConnection(){
        Connection conn = conns.get();
        if(conn == null){
            try {
                conn = dataSource.getConnection();
                conns.set(conn);
                conn.setAutoCommit(false);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return conn;
    }
    public static void commitAndClose(){
        Connection conn = conns.get();
        if(conn != null){
            try {
                conn.commit();

            } catch (SQLException e) {

                throw new RuntimeException(e);
            }finally {
                try {
                    conn.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        conns.remove();
    }
    public static void rollbackAndClose(){
        Connection conn = conns.get();
        if(conn != null){
            try {
                conn.rollback();

            } catch (SQLException e) {

                throw new RuntimeException(e);
            }finally {
                try {
                    conn.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        conns.remove();
    }
//    public static void closeConnection(Connection conn){
//        if(conn != null){
//            try {
//                conn.close();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        }
//    }


}
