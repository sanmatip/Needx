package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.PostDao;
import com.demo.model.Customer;
import com.demo.model.Post;

@Service
public class PostService {
	@Autowired
	private PostDao postDao;
	
	public List<Post> getAllPosts()
	{
		return postDao.getAllPosts();
	}

	public void addPost(Post post) {
	       postDao.addPost( post);
	   }
	
	 
	  public List<Post> getPostDetails() {
         return postDao.getPostDetails();
    }
	  
	  public void deletePost(Integer custId,Integer postId) {
	        postDao.deletePost(custId,postId);
	    }
}
