package com.naedam.admin.award.model.dao;

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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAward(Award award) {
		// TODO Auto-generated method stub
		session.update("award.insertAward", award);

	}

	@Override
	public void deleteAward(int awardNo) {
		// TODO Auto-generated method stub
		session.delete("award.insertAward", awardNo);

	}

}
