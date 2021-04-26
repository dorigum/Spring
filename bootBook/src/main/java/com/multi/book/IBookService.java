package com.multi.book;

import java.util.ArrayList;

public interface IBookService {
	ArrayList<BookVO> bookList();
	void insertBook(BookVO book);
	void updateBook(BookVO book);
	void deleteBook(String bookNo);
	BookVO bookDetailView(String bookNo);
}
