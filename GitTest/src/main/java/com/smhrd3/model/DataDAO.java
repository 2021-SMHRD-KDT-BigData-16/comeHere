package com.smhrd3.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd3.db.SqlSessionManager;

public class DataDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<ConsumptionDTO> consumptionData(ConsumptionDTO dto) {
		List<ConsumptionDTO> consumptionList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			consumptionList = session.selectList("selectConsumption", dto);
		} finally {
			session.close();
		}
		
		return consumptionList;
	}
	

}
