package com.sds.icto.mysite.repository;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.GuestbookVo;

@Repository
public class GuestbookDao {

	@Autowired
	SqlMapClientTemplate sqlmapclienttemplate;

	public void insert( GuestbookVo vo ) 
	{
		sqlmapclienttemplate.insert("guestbook.insert",vo);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<GuestbookVo> fetchList()
	{ 
		List<GuestbookVo> list = sqlmapclienttemplate.queryForList("guestbook.list");
		
		
		return list;
	}
	
	

	
	public void delete()
	{
		
	}
	
	@SuppressWarnings("unchecked")
	public void delete( GuestbookVo vo ){
	
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("no", vo.getNo());
		map.put("password", vo.getPassword());
		
		sqlmapclienttemplate.delete("guestbook.delete", map);
		
	}

}
