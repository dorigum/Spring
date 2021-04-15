package com.spring_mybatis.book.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_mybatis.book.dao.IBookDAO;
import com.spring_mybatis.book.model.BookVO;

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
	public void deleteBook(int bookNo) {
		// TODO Auto-generated method stub

	}

	@Override
	public BookVO bookDetailView(int bookNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
