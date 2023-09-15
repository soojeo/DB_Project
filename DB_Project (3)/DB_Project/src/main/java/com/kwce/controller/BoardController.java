package com.kwce.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.kwce.domain.Criteria;
import com.kwce.domain.PageMaker;
import com.kwce.domain.SearchCriteria;
import com.kwce.domain.StudentVO;
import com.kwce.service.BoardService;
import com.kwce.domain.AskVO;
import com.kwce.domain.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
   
   private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
   @Autowired
   private BoardService service;
   
   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public void listPage(@ModelAttribute("cri") SearchCriteria cri,@RequestParam("sno")String sno, Model model,HttpServletRequest req) throws Exception
   {
	   HttpSession session = req.getSession();////////////////////////////
	   StudentVO stu = (StudentVO) session.getAttribute("student");////////////////////////////////
	   
	   
	   cri.setId(stu.getId());
	   
	   cri.setSnum(sno);
	   
	   System.out.println("list");
	   model.addAttribute("list", service.listSearchCriteria(cri)); //전체목록에 검색페이징 기능+
	   PageMaker pageMaker = new PageMaker();
	   pageMaker.setCri(cri);
	   pageMaker.setTotalCount(service.listSearchCount(cri));//전체목록에 검색페이징 카운트+
	   
	   
	   model.addAttribute("pageMaker", pageMaker);
   }
  
   @RequestMapping(value = "/noticelist", method = RequestMethod.GET)
   public void noticelist(@ModelAttribute("cri") SearchCriteria cri, Model model,HttpServletRequest req) throws Exception
   {
	   HttpSession session = req.getSession();////////////////////////////
	   StudentVO stu = (StudentVO) session.getAttribute("student");////////////////////////////////
	   
	   cri.setId(stu.getId());
	   System.out.println("list");
	   model.addAttribute("list", service.listSearchCriteria(cri)); //전체목록에 검색페이징 기능+
	   PageMaker pageMaker = new PageMaker();
	   pageMaker.setCri(cri);
	   pageMaker.setTotalCount(service.listSearchCount(cri));//전체목록에 검색페이징 카운트+
	   
	   model.addAttribute("noticelist", service.listAll(stu.getId()));
	   
	   model.addAttribute("pageMaker", pageMaker);
   }
   
   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public String registerGET(BoardVO board, Model model) throws Exception{
      logger.info("register page get......");
      return "board/register";
   }
   
   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String registPOST(BoardVO board, RedirectAttributes rttr)throws Exception{
      logger.info("register page post......");
      logger.info(board.toString());
      service.regist(board);
      rttr.addFlashAttribute("msg","SUCCESS");
      return "redirect:/board/list";
   }
   
   @RequestMapping(value = "/read", method = RequestMethod.GET)
   public String read(@RequestParam("bno")int bno, Model model) throws Exception{
      logger.info("read page get....");
      model.addAttribute(service.read(bno));
      return "board/read";
   }

   @RequestMapping(value="/modify", method=RequestMethod.GET)
   public String modifyGET(@RequestParam("bno")int bno, Model model)throws Exception{
      logger.info("modify page get....");
      model.addAttribute(service.read(bno));
      return "board/modify";
   }
   @RequestMapping(value="/modify", method = RequestMethod.POST)
   public String modifyPOST(BoardVO board, RedirectAttributes rttr) throws Exception{
      logger.info("modify page post......");
      logger.info(board.toString());
      service.modify(board);
      rttr.addFlashAttribute("msg","SUCCESS");
      return "redirect:/board/list";
   }
   @RequestMapping(value="/remove", method=RequestMethod.POST)
   public String remove(@RequestParam("bno")int bno,RedirectAttributes rttr) throws Exception{
      service.remove(bno);
      logger.info("remove page post......");
      rttr.addFlashAttribute("msg", "SUCCESS");
      return "redirect:/board/list";
   }
   @RequestMapping(value = "/listPage", method = RequestMethod.GET)
   public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
	   model.addAttribute("list", service.listCriteria(cri)); // JSP에 계산된 페이징 출력
	   PageMaker pageMaker = new PageMaker(); // 객체생성
	   pageMaker.setCri(cri); // setCri 메소드 사용
	   pageMaker.setTotalCount(service.listCountCriteria(cri)); // 전체 게시글 갯수 카운트
	   model.addAttribute("pageMaker", pageMaker);
   }
   ///////////////////////////////////////////////////////////////
   @RequestMapping(value = "/askregister", method = RequestMethod.GET)
   public String askregisterGET(AskVO board, Model model) throws Exception{
      logger.info("ask page get......");
      return "board/askregister";
   }
   
   @RequestMapping(value = "/askregister", method = RequestMethod.POST)
   public String askregistPOST(AskVO board, RedirectAttributes rttr)throws Exception{
      logger.info("ask page post......");
      logger.info(board.toString());
      service.askregist(board);
      rttr.addFlashAttribute("msg","SUCCESS");
      return "redirect:/board/asklist";
   }
   
   @RequestMapping(value="/asklist", method = RequestMethod.GET)
   public String asklist(Model model) throws Exception{
      logger.info("list page get....");
      model.addAttribute("asklist", service.asklistAll());
      return "board/asklist";
   }
}