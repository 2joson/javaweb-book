package com.atguigu.test;

import com.atguigu.dao.impl.OrderItemDaoImpl;
import com.atguigu.pojo.Cart;
import com.atguigu.pojo.CartItem;
import com.atguigu.service.impl.OrderServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class OrderServiceTest {

    @Test
    public void createOrder() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(1,"ddd",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(2,"sss",1,new BigDecimal(1000),new BigDecimal(1000)));
        OrderServiceImpl orderService = new OrderServiceImpl();

        System.out.println(orderService.createOrder(cart,1));
    }
}