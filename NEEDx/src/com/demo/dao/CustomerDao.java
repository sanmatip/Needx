package com.demo.dao;

import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.NClob;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.Ref;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.SQLXML;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.demo.model.Customer;

@Repository
public class CustomerDao {
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public void addCustomer(Customer customer) {
	  System.out.println("DAO");
	  //String filename="abc";
	  String path = "D:\\image\\profile\\";
    jdbcTemplate.update("insert into blog_cust values(user_sequence.NEXTVAL,?,?,?,?,?)",
        new Object[] {customer.getName(),customer.getUsername(),customer.getPassword(),customer.getImageName(),customer.getImagePath()});
  }

  public Customer customerLogin(String username, String password) {
    List<Customer> clist = jdbcTemplate.query(
        "select * from blog_cust where username=? and password=?", new RowMapper<Customer>() {
          @Override
          public Customer mapRow(ResultSet rs, int noOfRows) throws SQLException {
            Customer c = new Customer();
            c.setCustId(rs.getInt(1));
            c.setName(rs.getString(2));
            c.setUsername(rs.getString(3));
            c.setPassword(rs.getString(4));
            c.setImageName(rs.getString(5));
            c.setImagePath(rs.getString(6));
            
            return c;
          }
        }, username, password);
    return clist.size() > 0 ? clist.get(0) : null;
  }
  
  
  public Customer getById(int id){
		List<Customer> clist = jdbcTemplate.query("select * from blog_cust where custId=?", new RowMapper<Customer>() {
			
			public Customer mapRow(ResultSet rs, int noofRows) throws SQLException
			{
				Customer c = new Customer();
				c.setCustId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setUsername(rs.getString(3));
				c.setPassword(rs.getString(4));
				c.setImageName(rs.getString(5));
				c.setImagePath(rs.getString(6));
				return c;
			}
		} ,id);
		
		return clist.get(0);
	}
  
  	public Customer getimageName(String username,String password)
  	{
  		List<Customer> clist =  jdbcTemplate.query("select imageName from blog_cust where username=? and password=?" ,new RowMapper<Customer>() {
 			
 			public Customer mapRow(ResultSet rs, int noofRows) throws SQLException
 			{
 				Customer c = new Customer();
 			
 				c.setImageName(rs.getString("imagename"));
 				
 				return c;
 			}
 		} ,username,password);
 		
 		return clist.get(0);
 	}
  	 
  	 
  	}

