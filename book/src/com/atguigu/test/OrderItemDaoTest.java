package com.atguigu.test;

import com.atguigu.dao.OrderItemDao;
import com.atguigu.dao.impl.OrderItemDaoImpl;
import com.atguigu.pojo.OrderItem;
import org.junit.Test;

import javax.swing.*;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class OrderItemDaoTest {

    @Test
    public void saveOrderItem() {
        OrderItemDao orderItemDao = new OrderItemDaoImpl();
        orderItemDao.saveOrderItem(new OrderItem(null,"java",1,new BigDecimal(100),new BigDecimal(100),"122334"));
        orderItemDao.saveOrderItem(new OrderItem(null,"java",2,new BigDecimal(200),new BigDecimal(100),"122334"));
    }
}