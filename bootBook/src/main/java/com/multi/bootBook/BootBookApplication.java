package com.multi.bootBook;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.book.BookController;
import com.multi.book.IBookDAO;

@SpringBootApplication
@ComponentScan(basePackageClasses=BookController.class)
@MapperScan(basePackageClasses=IBookDAO.class)
public class BootBookApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootBookApplication.class, args);
	}

}
