package com.multi.book;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


@Service
public class BookService implements IBookService {
	@Autowired
	@Qualifier("IBookDAO")
	IBookDAO dao;
	
	@Override
	public ArrayList<BookVO> bookList() {
		return dao.bookList();
	}

	@Override
	public void insertBook(BookVO book) {
		dao.insertBook(book);

	}

	@Override
	public void updateBook(BookVO book) {
		dao.updateBook(book);

	}

	@Override
	public void deleteBook(String bookNo) {
		dao.deleteBook(bookNo);

	}

	@Override
	public BookVO bookDetailView(String bookNo) {
		return dao.bookDetailView(bookNo);
	}

}
