package com.crudapp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ControllerAdvice;
	import org.springframework.web.bind.annotation.ExceptionHandler;
	import org.springframework.web.bind.annotation.ResponseStatus;

import com.crudapp.exception.ProductException;

	@ControllerAdvice
	public class MyException {
		
		@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
		@ExceptionHandler(value=ProductException.class)
		public String exceptionHandlerGeneric(ProductException ex , Model m) {
			m.addAttribute("msg",ex.getMessage());
			return "null_page";
		}
}
