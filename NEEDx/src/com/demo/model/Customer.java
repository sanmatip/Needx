package com.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Customer {
  private int custId;
  private String name;
  private String username;
  private String password;
  private String ImageName;
  private String ImagePath;
public Customer() {
	super();
}
public Customer(int custId, String name, String username, String password, String imageName, String imagePath) {
	super();
	this.custId = custId;
	this.name = name;
	this.username = username;
	this.password = password;
	ImageName = imageName;
	ImagePath = imagePath;
}
public int getCustId() {
	return custId;
}
public void setCustId(int custId) {
	this.custId = custId;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getImageName() {
	return ImageName;
}
public void setImageName(String imageName) {
	ImageName = imageName;
}
public String getImagePath() {
	return ImagePath;
}
public void setImagePath(String imagePath) {
	ImagePath = imagePath;
}
@Override
public String toString() {
	return "Customer [custId=" + custId + ", name=" + name + ", username=" + username + ", password=" + password
			+ ", ImageName=" + ImageName + ", ImagePath=" + ImagePath + "]";
}
  

  
  
  
}
