package com.naedam.admin.recruit.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.naedam.admin.board.model.vo.Post;
import com.naedam.admin.recruit.model.vo.SearchDTO;
import com.naedam.admin.recruit.model.vo.recruitContentsDTO;
import com.naedam.admin.recruit.model.vo.recruitDTO;

import lombok.extern.log4j.Log4j;

@Repository
@Log4j
public class RecruitDaoImpl implements RecruitDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Post> getRecruitList(Map<String, Object> map, int offset, int limit) throws Exception {
		RowBounds rowBounds = new RowBounds(offset, limit);
		return sqlSession.selectList("recruit.getRecruitList", map, rowBounds);
	}
	
	@Override
	public Object getTotalCount(Map<String, Object> map) {
		return sqlSession.selectOne("recruit.getTotalCount", map);
	}

	@Override
	public int deleteRecruit(int recruitNum) {
		return sqlSession.update("recruit.deleteRecruit", recruitNum);
	}

	@Override
	public int insertRecruit(recruitDTO recruit) {
		log.info(">>>>>insertRecruitDAO 실행");
		return sqlSession.insert("recruit.insertRecruit", recruit);
	}

	@Override
	public int insertRecruitContents(recruitContentsDTO recruitContentsDTO) {
		log.info(">>>>>recruitContentsDTO :" + recruitContentsDTO);
		return sqlSession.insert("recruit.insertRecruitContents", recruitContentsDTO);
	}


	
}

