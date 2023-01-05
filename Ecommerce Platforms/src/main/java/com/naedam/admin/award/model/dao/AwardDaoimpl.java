package com.naedam.admin.award.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.admin.award.model.vo.Award;

@Repository
public class AwardDaoimpl implements AwardDao {

	@Autowired
	private SqlSession session;

	@Override
	public void insertAward(Award award) {
		session.insert("award.insertAward", award);
	}

	@Override
	public void updateAward(Award award) {
		session.update("award.insertAward", award);
	}

	@Override
	public void deleteAward(int awardNo) {
		session.delete("award.insertAward", awardNo);
	}

	@Override
	public List<Award> selectAwardList() {

		return session.selectList("award.getAwardList");
	}

	@Override
	public Award selectDetailByNo(int awardNo) {
		return session.selectOne("award.getDetailByNo", awardNo);
	}

	@Override
	public int selectAwardNo() {
		return session.selectOne("award.getAwardNo");
	}

}
