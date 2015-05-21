package com.sds.icto.mysite.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.sds.icto.mysite.domain.boardVo;
import com.sds.icto.mysite.service.BoardService;
import com.sds.icto.mysite.service.GuestbookService;

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

}
