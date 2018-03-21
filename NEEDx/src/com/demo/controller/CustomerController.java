package com.demo.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.demo.model.Customer;
import com.demo.model.Post;
import com.demo.service.CustomerService;
import com.demo.service.LikeService;
import com.demo.service.PostService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

@Controller
public class CustomerController {

  @Autowired
  private CustomerService customerService;
  @Autowired
  private PostService postService;
  @Autowired
  private LikeService likeService;

  /* Moving on registration form */
  @RequestMapping("/viewform")
  public ModelAndView showForm() {
    return new ModelAndView("registerform", "command", new Customer());
  }
  /* Method for adding user  */
  @RequestMapping("/addCustomer")
  public ModelAndView addPost(ModelMap map,@ModelAttribute("customer") Customer customer,@RequestParam CommonsMultipartFile fileUpload,HttpSession session) 
  {
	  /* image*/
    String path = "D:\\image\\profile\\";
	String filename = fileUpload.getOriginalFilename();
	byte barr[] = fileUpload.getBytes();
	//System.out.println("filename"+filename);
	customer.setImageName(filename);
	customer.setImagePath(path);
	String imgName=	path + filename;
	//System.out.println("filepath: "+path +"filename"+  filename);
	 customerService.addCustomer(customer);
	BufferedOutputStream bout = null;
	try {
		bout = new BufferedOutputStream(new FileOutputStream(path + StringUtils.trimAllWhitespace(filename)));
		bout.write(barr);
		String result=readimage(imgName);
		session.setAttribute("result", result);
		Customer user = customerService.getById(customer.getCustId());
		map.addAttribute("user", user);
		bout.flush();
		bout.close();
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	}
    return new ModelAndView("loginform");
  }

    /*Read Image Method */
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
		encodedImage = Base64.encode(baos.toByteArray());
	} catch(Exception e) { e.printStackTrace(); 
	System.out.println("Some problem has occurred. Please try again"); 
	}
	return encodedImage;
	}
	
  
	

	/* Moving on login form */
  @RequestMapping("/viewloginform")
  public ModelAndView showLoginForm() {
    return new ModelAndView("loginform", "command", new Customer());
  }

  @RequestMapping("/login")
  public ModelAndView customerLogin(@RequestParam String username, @RequestParam String password,
      HttpSession session) {
	  
	 
    Customer customer = customerService.customerLogin(username, password);
   Customer cust=customerService.getimageName(username, password);
   
   session.setAttribute("imagename", cust.getImageName());
   
   System.out.println("custome in image filename"+cust);
    // System.out.println(customer.toString());
    if (null != customer) {
      List<Post> post = postService.getAllPosts();
      session.setAttribute("cust", customer);
      session.setAttribute("post", post);
      	//System.out.println("deletable: "+session.getAttribute("result"));
         String Attr =(String) session.getAttribute("result");
         session.setAttribute("images", Attr);
      return new ModelAndView("redirect:/viewPost");
    } else {
      return new ModelAndView("loginform");
    }
  }

  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:/viewloginform";
  }

}
