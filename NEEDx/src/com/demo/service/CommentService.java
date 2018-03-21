package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.CommentDao;
import com.demo.model.Comment;
@Transactional
@Service
public class CommentService {

	@Autowired
	private CommentDao commentDao;
	
	public void addComment(Integer custId,Integer postId, String comment) {
		commentDao.addComment(custId, postId, comment);
	}
	
	public List<Comment> getCommentByPostId(Integer postId)
	{
		return commentDao.getCommentByPostId(postId);
	}
	
}
