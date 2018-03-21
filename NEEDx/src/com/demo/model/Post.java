package com.demo.model;

import java.io.Serializable;

import org.springframework.stereotype.Component;

/**
 * 
 * @author Ruchika Akotkar
 * @version ${ post pojo class}
 */
@Component
public class Post implements Serializable{
    /**
	 * generated serial version id
	 */
	private static final long serialVersionUID = 4747360729440949950L;
	
	private int custid;
    private String custName;
    private int postid;
    private String post;
    private int likes;
    private String postImageName;
    private String postImagePath;
    private String encodedPostImage;
   

	public Post() {
        super();
         // TODO Auto-generated constructor stub
   }

    public int getCustid() {
      return custid;
   }

    public void setCustid(int custid) {
        this.custid = custid;
    }

    public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
   }

    public int getPostid() {
        return postid;
    }

    public void setPostid(int postid) {
        this.postid = postid;
   }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

	public String getPostImageName() {
		return postImageName;
	}

	public void setPostImageName(String postImageName) {
		this.postImageName = postImageName;
	}

	public String getPostImagePath() {
		return postImagePath;
	}

	public void setPostImagePath(String postImagePath) {
		this.postImagePath = postImagePath;
	}

	public String getEncodedPostImage() {
		return encodedPostImage;
	}

	public void setEncodedPostImage(String encodedPostImage) {
		this.encodedPostImage = encodedPostImage;
	}

	 @Override
		public String toString() {
			return "Post [custid=" + custid + ", custName=" + custName + ", postid=" + postid + ", post=" + post
					+ ", likes=" + likes + ", postImageName=" + postImageName + ", postImagePath=" + postImagePath
					+ ", encodedPostImage=" + encodedPostImage + "]";
		}

}
