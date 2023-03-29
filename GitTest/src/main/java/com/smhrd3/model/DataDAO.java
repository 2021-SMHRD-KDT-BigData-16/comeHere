package com.smhrd3.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd3.db.SqlSessionManager;

public class DataDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<ConsumptionDTO> consumptionData(ConsumptionDTO consump_dto) {
		List<ConsumptionDTO> consumptionList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			consumptionList = session.selectList("selectConsumption", consump_dto);
		} finally {
			session.close();
		}
		
		return consumptionList;
	}
	
	public List<CreditDTO> creditData(CreditDTO credit_dto) {
		List<CreditDTO> creditList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			creditList = session.selectList("selectCredit", credit_dto);
		} finally {
			session.close();
		}
		
		return creditList;
	}

	public List<SNSDTO> snsData(SNSDTO sns_dto) {
		List<SNSDTO> snsList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			snsList = session.selectList("selectSNS", sns_dto);
		} finally {
			session.close();
		}
		
		return snsList;
		
	}

	public List<TravelPurposeDTO> travelPurpose(TravelPurposeDTO tp_dto) {
		List<TravelPurposeDTO> tpList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			tpList = session.selectList("selecttp", tp_dto);
		} finally {
			session.close();
		}
		
		return tpList;
		
	}

	public List<CompanyDTO> company(CompanyDTO com_dto) {
		List<CompanyDTO> comList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			comList = session.selectList("selectCompany", com_dto);
		} finally {
			session.close();
		}
		
		return comList;
		
	}

}
