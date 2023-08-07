package com.atguigu.test;

import com.atguigu.pojo.Cart;
import com.atguigu.pojo.CartItem;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class CartTest {
    Cart cart = new Cart();
    @Test
    public void addItem() {
        cart.addItem(new CartItem(1,"ddd",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(2,"sss",1,new BigDecimal(1000),new BigDecimal(1000)));
        System.out.println(cart);
    }

    @Test
    public void deleteItem() {
        cart.addItem(new CartItem(1,"ddd",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(2,"sss",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.deleteItem(1);
        System.out.println(cart);
    }

    @Test
    public void clear() {
        cart.addItem(new CartItem(1,"ddd",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(2,"sss",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.clear();
        System.out.println(cart);
    }

    @Test
    public void updateCount() {
        cart.addItem(new CartItem(1,"ddd",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.addItem(new CartItem(2,"sss",1,new BigDecimal(1000),new BigDecimal(1000)));
        cart.updateCount(1,10);
        System.out.println(cart);
    }
}