package com.demo.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.demo.model.Comment;
import com.demo.model.Customer;
import com.demo.service.CommentService;

@Controller
public class CommentController {
  @Autowired
  private CommentService commentService;

  @RequestMapping(value = "/addcomment")
  public ModelAndView addComment(@RequestParam Integer postId, @RequestParam String comment,
      HttpSession session) {
    Customer cust = (Customer) session.getAttribute("cust");
    commentService.addComment(cust.getCustId(), postId, comment);
    System.out.println(comment + "post=" + postId);
    session.setAttribute("custId", new Customer().getCustId());
    return new ModelAndView("redirect:/viewPost");
  }

  @RequestMapping("/viewComment")
  public ModelAndView getComments(@PathVariable Integer id) {
    List<Comment> com = commentService.getCommentByPostId(id);
    return new ModelAndView("viewComment", "com", com);
  }

  @RequestMapping(value = "/getComment/{id}")
  public ModelAndView getCommentById(@PathVariable Integer id) {
    /* List<Post> pList= (List<Post>)session.getAttribute("post"); */
    List<Comment> com = null;
    com = commentService.getCommentByPostId(id);
    System.out.println("comment in controller=" + com.toString());
    System.out.println(id);
    return new ModelAndView("viewComment", "com", com);
  }
}
