package com.multi.bootMybatis;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.file.FileDownloadController;
import com.multi.file.FileUploadController;
import com.multi.product.IProductDAO;
import com.multi.product.ProductController;

@SpringBootApplication
@ComponentScan(basePackageClasses=ProductController.class)
@ComponentScan(basePackageClasses=FileUploadController.class)
@ComponentScan(basePackageClasses=FileDownloadController.class)
@MapperScan(basePackageClasses=IProductDAO.class)
public class BootMybatisApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootMybatisApplication.class, args);
	}

}
