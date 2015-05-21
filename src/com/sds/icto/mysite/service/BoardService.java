package com.sds.icto.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.sds.icto.mysite.domain.boardVo;
import com.sds.icto.mysite.repository.boardDao;

@Service
public class BoardService {
	@Autowired
	boardDao boardDao;
	
	public List<boardVo> getboardItemList() {
		return boardDao.fetchList();
	}
	
}
