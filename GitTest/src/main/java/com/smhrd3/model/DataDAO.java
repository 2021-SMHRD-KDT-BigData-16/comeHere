package com.smhrd3.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd3.db.SqlSessionManager;

public class DataDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<ConsumptionDTO> consumptionDataJN(ConsumptionDTO consump_dto) {
		List<ConsumptionDTO> consumptionList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			consumptionList = session.selectList("selectConsumptionJN", consump_dto);
		} finally {
			session.close();
		}
		
		return consumptionList;
	}
	
	public List<CreditDTO> creditDataJN(CreditDTO credit_dto) {
		List<CreditDTO> creditList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			creditList = session.selectList("selectCreditJN", credit_dto);
		} finally {
			session.close();
		}
		
		return creditList;
	}

	public List<SNSDTO> snsDataJN(SNSDTO sns_dto) {
		List<SNSDTO> snsList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			snsList = session.selectList("selectSNSJN", sns_dto);
		} finally {
			session.close();
		}
		
		return snsList;
		
	}

	public List<TravelPurposeDTO> travelPurposeJN(TravelPurposeDTO tp_dto) {
		List<TravelPurposeDTO> tpList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			tpList = session.selectList("selecttpJN", tp_dto);
		} finally {
			session.close();
		}
		
		return tpList;
		
	}

	public List<CompanyDTO> companyJN(CompanyDTO com_dto) {
		List<CompanyDTO> comList = null;
		SqlSession session = factory.openSession(true);
		
		try {
			comList = session.selectList("selectCompanyJN", com_dto);
		} finally {
			session.close();
		}
		
		return comList;
		
	}

}
