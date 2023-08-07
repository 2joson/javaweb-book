package com.atguigu.test;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.pojo.Book;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.Assert.*;

public class BookDaoTest {
    private BookDao bookDao = new BookDaoImpl();

    @Test
    public void addBook() {
        bookDao.addBook(new Book(null,"ggee","tt",new BigDecimal(9999),1100,0,null));
    }

    @Test
    public void deleteBookById() {
    }

    @Test
    public void updateBook() {
        bookDao.updateBook(new Book(21,"ee","tte",new BigDecimal(999),1100,0,null));
    }

    @Test
    public void queryBookById() {
        System.out.println(bookDao.queryBookById(21));
    }

    @Test
    public void queryBooks() {
        System.out.println(bookDao.queryBooks());
    }
    @Test
    public void queryForPageTotalCount() {
        Integer pageTotalCount = bookDao.queryForPageTotalCount();
        System.out.println(pageTotalCount);
    }

    @Test
    public void queryForPageItems() {
        List<Book> books = bookDao.queryForPageItems(3, 4);
        System.out.println(books);
    }
    @Test
    public void queryForPageTotalCountByPrice() {
        Integer pageTotalCount = bookDao.queryForPageTotalCountByPrice(50,100);
        System.out.println(pageTotalCount);
    }
    @Test
    public void queryForPageItemsByPrice() {
        List<Book> books = bookDao.queryForPageItemsByPrice(3, 4,50,100);
        System.out.println(books);
    }
}