package com.ytb.project_xinxin.util;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 * @author 杨天宝
 * @version 1.0
 */
public class DBUtil {

    public static Connection getConnection(){
        Connection con=null;
        try {
            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            //获取数据库的链接
            String url="jdbc:mysql://127.0.0.1:3306/test?characterEncoding=utf8";
            String name="root";
            String pwd="123456";
            con=DriverManager.getConnection(url,name,pwd);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }
}
