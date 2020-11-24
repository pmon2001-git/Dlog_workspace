package com.kh.dlog.widget.timetable.model.Service;

import java.util.ArrayList;

import com.kh.dlog.widget.timetable.model.vo.Timetable;

public interface TimetableService {
	
	public ArrayList<Timetable> timetableList(int timetableWriter);
	public int insertTimetableCheck(Timetable t);
	public int insertTimetable(Timetable t);
	public int insertDeleteTimetable(Timetable t);
	public int updateTimetableCheck(Timetable t);
	public int updateTimetable(Timetable t);
	public int updateDeleteTimetable(Timetable t);
	public int deleteTimetable(String[] deleteTimetableCheck);
	public int resetTimetable(String timetableWriter);
	
	
}
