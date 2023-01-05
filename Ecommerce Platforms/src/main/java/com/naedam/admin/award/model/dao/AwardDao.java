package com.naedam.admin.award.model.dao;

import com.naedam.admin.award.model.vo.Award;

public interface AwardDao {

	void insertAward(Award award);

	void updateAward(Award award);

	void deleteAward(int awardNo);

	
}
