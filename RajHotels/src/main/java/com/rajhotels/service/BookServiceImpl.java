package com.rajhotels.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.rajhotels.dao.BookDao;
import com.rajhotels.model.Book;
import com.rajhotels.model.User;

public class BookServiceImpl implements BookService {

  @Autowired
  public BookDao bookDao;

  public int register(Book book) {
    return bookDao.register(book);
  }
  public void update(Book book) {
	  bookDao.update(book);
  }
  


}
