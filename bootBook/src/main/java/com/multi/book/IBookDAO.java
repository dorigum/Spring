package com.multi.book;

import java.util.ArrayList;

public interface IBookDAO {
	public ArrayList<BookVO> bookList();
	public void insertBook(BookVO book);
	public void updateBook(BookVO book);
	public void deleteBook(String bookNo);
	public BookVO bookDetailView(String bookNo);
	
}
