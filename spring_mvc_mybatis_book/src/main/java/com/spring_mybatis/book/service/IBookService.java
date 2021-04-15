package com.spring_mybatis.book.service;

import java.util.ArrayList;

import com.spring_mybatis.book.model.BookVO;

public interface IBookService {
	ArrayList<BookVO> bookList();
	void insertBook(BookVO book);
	void updateBook(BookVO book);
	void deleteBook(int bookNo);
	BookVO bookDetailView(int bookNo);
}
