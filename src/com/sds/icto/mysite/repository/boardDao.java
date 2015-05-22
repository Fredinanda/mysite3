package com.sds.icto.mysite.repository;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.boardVo;


@Repository
public class boardDao {
	
	
	@Autowired
	SqlMapClientTemplate sqlmapclienttemplate;
	
	public void insert( boardVo vo ) {
		sqlmapclienttemplate.insert("board.insert", vo);
		}
	
	
	
	@SuppressWarnings("unchecked")
	public List<boardVo> fetchList(){ 
		List<boardVo> list = sqlmapclienttemplate.queryForList("board.list");
		return list;
	}
	
	
	public boardVo read(Long no) {
		
		boardVo vo = (boardVo) sqlmapclienttemplate.queryForObject("board.select", no);
		return vo;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void updateBoard( String title, String content){
		
		{
			Map map = new HashMap();
			map.put("title", title);
			map.put("content", content);
			sqlmapclienttemplate.update("board.updateBoard", map);
			
		}
		
	}
	

	public void delete(Long no) {
	
		sqlmapclienttemplate.delete("board.delete", no);
	
		
	
	}

	
	
}
