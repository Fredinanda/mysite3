package com.sds.icto.mysite.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import com.sds.icto.mysite.domain.GuestbookVo;
import com.sds.icto.mysite.domain.boardVo;
import com.sds.icto.mysite.service.BoardService;


@Controller
@RequestMapping("/board")
public class boardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping( value={ "", "/" }, method=RequestMethod.GET  )
	public String list(Model model){
		List<boardVo> list = boardService.getboardItemList();
		model.addAttribute( "list", list );
		return "board/list";
	}
	
	
	@RequestMapping( value="/write",  method=RequestMethod.GET  )
	public String write( ) {
		return "board/write";
	}
	
	
	@RequestMapping( value="/write",  method=RequestMethod.POST  )
	public String write2( @ModelAttribute boardVo vo) {
				
		boardService.insertBoardItem( vo );
		return "redirect:/board";
	}
	
	
	
	@RequestMapping( value="/select/{no}")
	public String select( @PathVariable Long no, Model model ) {
	  	boardVo vo =  boardService.readBoardItem(no);
		model.addAttribute( "vo", vo );
		return "board/select";
	}
	
	
	@RequestMapping(value="/delete/{no}")
	public String delete(@PathVariable Long no, Model model){
		boardService.deleteboodkItem(no);
		return "redirect:/board";
	
	}
	
	@RequestMapping(value="update/{no}")
	public String update(@PathVariable Long no, @RequestParam ("title") String title,
			@RequestParam ("content") String content,
			Model model){
		
		boardService.updateBoardItem(title, content);
		
		
		return "redirect:/board";
	}

	
}
