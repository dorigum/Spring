package com.spring_mybatis.book.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_mybatis.book.model.BookVO;
import com.spring_mybatis.book.service.BookService;

@Controller
public class BookController {
	@Autowired
	BookService service;
	
	// index 페이지
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	// 전체 도서 조회
	@RequestMapping("/book/bookListView")
	public String viewBookList(Model model) {
		ArrayList<BookVO> bookList = service.bookList();
		model.addAttribute("bookList", bookList);
		return "book/bookListView";
	}
	
	// 도서 등록 화면으로 이동
	@RequestMapping("/book/bookNewForm")
	public String viewBookForm() {
		return "book/bookNewForm";
	}
	
	// 도서 등록 : DB 저장
	@RequestMapping("/book/insert")
	public String insertBook(BookVO book) {
		service.insertBook(book);
		return "redirect:./bookListView";
	}
}
