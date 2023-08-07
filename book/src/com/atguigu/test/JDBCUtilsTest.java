package com.atguigu.test;

import com.atguigu.utils.JDBCUtils;
import org.junit.Test;

public class JDBCUtilsTest {
    @Test
    public void testJdbcUtils(){
        System.out.println(JDBCUtils.getConnection());
    }
}
