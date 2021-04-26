package com.multi.book;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	// 도서 상세 정보 조회
	@RequestMapping("/book/bookDetailView/{bookNo}")
	public String detailViewBook(@PathVariable String bookNo, Model model) {
		BookVO book = service.bookDetailView(bookNo);
		model.addAttribute("book", book);
		return "book/bookDetailView";
	}
	
	// 도서 정보 수정화면으로 이동
	@RequestMapping("/book/updateForm/{bookNo}")
	public String updateBookForm(@PathVariable String bookNo, Model model) {
		BookVO book = service.bookDetailView(bookNo);
		model.addAttribute("book", book);
		return "book/bookUpdateForm";
	}
	
	// 도서 정보 수정
	@RequestMapping("/book/update")
	public String updateBook(BookVO book) {
		service.updateBook(book);
		return "redirect:./bookListView";
	}
	
	// 도서 정보 삭제
	@RequestMapping("/book/delete/{bookNo}")
	public String deleteBook(@PathVariable String bookNo) {
		service.deleteBook(bookNo);
		return "redirect:/book/bookListView";
	}
}
