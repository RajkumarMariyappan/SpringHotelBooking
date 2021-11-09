package com.rajhotels.service;

import com.rajhotels.model.Book;
import com.rajhotels.model.User;

public interface BookService {

  int register(Book book);
  void update(Book book); 
}
