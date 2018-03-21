package com.demo.controller;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.demo.model.Customer;
import com.demo.model.Reply;
import com.demo.service.ReplyService;
@Controller
public class ReplyController 
{
    @Autowired
    private ReplyService replyService;
    @RequestMapping(value="/addReply")
    public ModelAndView addReplyToComment(@RequestParam Integer commentId,@RequestParam String reply,HttpSession session) throws Exception
    {
        Customer cust=(Customer)session.getAttribute("cust");
        replyService.addReply(cust.getCustId(),commentId,reply);
        System.out.println("in reply controller "+cust.getCustId()+"  "+commentId+ "  "+ " " +reply );
        return  new ModelAndView("viewComment");
    }
    @RequestMapping(value="getAllReply/{id}")
    public ModelAndView getAllReply(@PathVariable Integer id) 
    {
        List<Reply> rList=replyService.getAllReplyByCommentId(id);
        System.out.println("in reply controller:: "+rList.toString());
        return new ModelAndView("viewReply","rList",rList);
    }
}
