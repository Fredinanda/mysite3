package com.sds.icto.mysite.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.*;;


@Repository
public class boardDao {
	
	
	@Autowired
	SqlMapClientTemplate sqlmapclienttemplate;
	
	public void insert( boardVo vo ) {
			
			
			//String sql = "INSERT INTO BOARD VALUES (board_no_seq.nextval, ?, ?, ?, ?, 1, SYSDATE)";
	
			
		}
		
		public List<boardVo> fetchList(){ 
			
			List<boardVo> list = sqlmapclienttemplate.queryForList("board.list");
			
			return list;
		}
		
		public boardVo read(long no) {
			
			boardVo vo = null;
			
			
			//String sql = "select * from board where no=?";
			
			return vo;
		}
	
		public void update(boardVo update)  {
			
			//String sql = "update board set title=?, content=? where no=?";
			
		}
		
		public void delete(long no) {
			
		//"delete from board where no=?";
		
		}
	
	
	
}
