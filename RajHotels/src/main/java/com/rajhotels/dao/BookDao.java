package com.rajhotels.dao;

import com.rajhotels.model.Book;
import com.rajhotels.model.User;

public interface BookDao {

  public int register(Book book);
  public void update(Book book);
}
