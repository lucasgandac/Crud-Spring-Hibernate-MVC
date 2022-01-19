package com.springstudies.springdemo.dao;

import java.util.List;

import com.springstudies.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
	
}
