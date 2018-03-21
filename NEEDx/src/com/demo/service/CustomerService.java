package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.dao.CustomerDao;
import com.demo.model.Customer;

@Service
public class CustomerService {
  @Autowired
  private CustomerDao customerDao;

  public void addCustomer(Customer customer) {
    customerDao.addCustomer(customer);
  }

  public Customer customerLogin(String username, String password) {
    return customerDao.customerLogin(username, password);
  }
  public Customer getById(int id)
	{
		return customerDao.getById(id);
	}
  
  
  public Customer getimageName(String username,String password )
  {
	  return customerDao.getimageName(username, password);
  }
}
