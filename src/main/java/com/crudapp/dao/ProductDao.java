package com.crudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crudapp.exception.ProductException;
import com.crudapp.model.Product;


@Component
public class ProductDao {
		
		@Autowired
		private HibernateTemplate hibernateTemplate;
		
		//create
		@Transactional
		public void createProduct(Product product) {
			
			this.hibernateTemplate.saveOrUpdate(product);
			
		}
		
		//get all products
		public List<Product> getProducts() {
			List<Product> products = this.hibernateTemplate.loadAll(Product.class);
			return products;
		}
		
		//delete single product
		@Transactional
		public void deleteProduct(int pid) 
		/*
		 *  { Product result = (Product)
		 * this.hibernateTemplate.get(Product.class, pid); if (result == null) { throw
		 * new ProductException("Product with ID " + pid + " does not exist"); } Product
		 * p = this.hibernateTemplate.load(Product.class,pid);
		 * this.hibernateTemplate.delete(p);
		 */
		{
			Product product = this.hibernateTemplate.get(Product.class, pid);
			if (product == null) 
			{
				throw new ProductException("Product with ID " + pid + " does not exist");
			}
			this.hibernateTemplate.delete(product);
		 }
 
		//get single product
		public  Product getProduct(int pid) {
			return this.hibernateTemplate.get(Product.class,pid);
			
		}
}
