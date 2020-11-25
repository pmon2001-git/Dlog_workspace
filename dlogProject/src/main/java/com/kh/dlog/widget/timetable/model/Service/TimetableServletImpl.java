package com.kh.dlog.widget.timetable.model.Service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.widget.timetable.model.dao.TimetableDao;
import com.kh.dlog.widget.timetable.model.vo.Timetable;

@Service
public class TimetableServletImpl implements TimetableService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private TimetableDao tDao;
	
	@Override
	public ArrayList<Timetable> timetableList(int timetableWriter) {
		// TODO Auto-generated method stub
		return tDao.timetableList(sqlSession, timetableWriter);
	}

	@Override
	public int insertTimetableCheck(Timetable t) {
		// TODO Auto-generated method stub
		return tDao.insertTimetableCheck(sqlSession, t);
	}
	
	@Override
	public int insertTimetable(Timetable t) {
		
		return tDao.insertTimetable(sqlSession, t);
	}
	
	@Override
	public int insertDeleteTimetable(Timetable t) {
		// TODO Auto-generated method stub
		return tDao.insertDeleteTimetable(sqlSession,t );
	}

	@Override
	public int updateTimetableCheck(Timetable t) {
		// TODO Auto-generated method stub
		return tDao.updateTimetableCheck(sqlSession, t);
	}
	
	@Override
	public int updateTimetable(Timetable t) {
		// TODO Auto-generated method stub
		return tDao.updateTimetable(sqlSession, t);
	}
	
	@Override
	public int updateDeleteTimetable(Timetable t) {
		// TODO Auto-generated method stub
		return tDao.updateDeleteTimetable(sqlSession, t);
	}
	
	@Override
	public int deleteTimetable(String[] deleteTimetableCheck) {
		// TODO Auto-generated method stub
		return tDao.deleteTimetable(sqlSession, deleteTimetableCheck);
	}

	@Override
	public int resetTimetable(String timetableWriter) {
		// TODO Auto-generated method stub
		return tDao.resetTimetable(sqlSession, timetableWriter);
	}



}
