package com.demo.controller;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.demo.model.Customer;
import com.demo.model.Post;
import com.demo.service.LikeService;
import com.demo.service.PostService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
@Controller
public class PostController 
{
    @Autowired
    private PostService postService;
    @RequestMapping("/viewPost")
    public ModelAndView getPosts(HttpSession session,Model map)
    {
     
        String imgpath=null;
    	List<Post> clist=null;
    	 try {
    		 clist = postService.getPostDetails();
        for (Post post : clist) {
			 imgpath=(post.getPostImagePath()+post.getPostImageName());			
			 if((post.getPostImagePath()!=null && !post.getPostImagePath().isEmpty() 
					 && !post.getPostImagePath().equalsIgnoreCase(null))) {
				// System.out.println("in controller image path is:-"+imgpath);
				  String b65 =readimage(imgpath);
				    post.setEncodedPostImage(b65);
				    //System.out.println(post.getEncodedPostImage());
		      }
        }
    	}
    	finally
    	{
    		if(imgpath==null)
    		{
    			imgpath=null;
    		}
    	}
        
        
        //image name from CustmerController               
        String img="D:\\image\\profile\\"+session.getAttribute("imagename");
        String result=readimage(img);
       /* System.out.println("final result"+result);*/
        session.setAttribute("finalimg",result);
        
        return new ModelAndView("viewPost", "clist", clist);
    }
    @RequestMapping("/addPost")
    public ModelAndView addPost(@ModelAttribute("post") Post post,
    		HttpSession session,@RequestParam CommonsMultipartFile file) throws IOException 
    {
      /*  Customer cust= (Customer) session.getAttribute("cust");
        System.out.println(cust);
        postService.addPost(cust.getCustId(),post);*/
    	BufferedOutputStream bout = null;	
    	int cust =(int)session.getAttribute("custom");
        //System.out.println(cust.toString());
    	
		String path = "D:\\image\\Posts\\";
		String filename = file.getOriginalFilename();
		byte barr[] = file.getBytes();
		
		post.setCustid(cust);
		/*if(filename!=null && !filename.isEmpty()) {
			post.setPostImageName(filename);
			post.setPostImagePath(path);
		}
		else {
			post.setPostImageName(null);
			post.setPostImagePath(null);
		}*/
		System.out.println("post : "+post.getPost());
		if((post.getPost()!=null) || (filename !=null  && !filename.isEmpty()))
		{
			post.setPost(post.getPost());
			post.setPostImageName(filename);
			post.setPostImagePath(path);
		}
		else if((post.getPost()==null) || (filename !=null  && !filename.isEmpty()))
		{
			post.setPost("");
			post.setPostImageName(filename);
			post.setPostImagePath(path);
		}
		
		else if((post.getPost()!=null) || (filename ==null && filename.isEmpty()))
		{
			post.setPost(post.getPost());
			post.setPostImageName("");
			post.setPostImagePath("");
			
		}
		
		/*else if((post.getPost()==null) && (filename ==null  && filename.isEmpty()))
		{
			System.out.println("postssss");
			return new ModelAndView("redirect:/viewPost");
		}
		*/
			
		
		
		//String imgName=	path + filename;
		 System.out.println("controller:-" +post.toString());
		
			 postService.addPost(post);
		      if(filename!=null && !filename.isEmpty()) {
        	    	bout = new BufferedOutputStream(new FileOutputStream(path + StringUtils.trimAllWhitespace(filename)));
			bout.write(barr);
           
        }
        return new ModelAndView("redirect:/viewPost");
    }

    // functiopn to get an encoded imagename
    public String  readimage(String imgName) 
	{
		String encodedImage="";
		

	try{

		// File class is an abstract representation of file and directory pathname.
		File img= new File(imgName);

		// ImageIO.read will read an image  from file object (img).	
		BufferedImage image = ImageIO.read(img);

		ByteArrayOutputStream baos = new ByteArrayOutputStream(); 
		
		// write an image into array	
		
		ImageIO.write(image, "png", baos); 
		ImageIO.write(image, "jpg", baos); 
		ImageIO.write(image, "jpeg", baos); 

		encodedImage = Base64.encode(baos.toByteArray());
		
	} catch(Exception e) { e.printStackTrace(); 
	System.out.println("Some problem has occurred. Please try again"); 
	}
	return encodedImage;
	}

    @RequestMapping("/deletePost")
    public ModelAndView deletePost(@RequestParam("custId") Integer custId,@RequestParam("postId") Integer postId) 
    {
        System.out.println("customer Id in controller:-"+custId);
        postService.deletePost(custId,postId);
        return new ModelAndView("redirect:/viewPost");
    }
}
