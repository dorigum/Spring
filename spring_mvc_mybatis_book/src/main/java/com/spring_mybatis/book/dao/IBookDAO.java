package com.spring_mybatis.book.dao;

import java.util.ArrayList;

import com.spring_mybatis.book.model.BookVO;

public interface IBookDAO {
	public ArrayList<BookVO> bookList();
	public void insertBook(BookVO book);
	public void updateBook(BookVO book);
	public void deleteBook(int bookNo);
	public BookVO bookDetailView(int bookNo);
	
}
