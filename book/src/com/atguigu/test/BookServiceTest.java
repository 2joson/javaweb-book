package com.atguigu.test;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class BookServiceTest {
    private BookService bookService = new BookServiceImpl();
    @Test
    public void addBook() {

    }

    @Test
    public void deleteBookById() {
    }

    @Test
    public void updateBook() {
    }

    @Test
    public void queryBookById() {
    }

    @Test
    public void queryBooks() {
    }
    @Test
    public void page(){
        Page<Book> page = bookService.page(3, Page.PAGE_SIZE);
        System.out.println(page);
    }
}