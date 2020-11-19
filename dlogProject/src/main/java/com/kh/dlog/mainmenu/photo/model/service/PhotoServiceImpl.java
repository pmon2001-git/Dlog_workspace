package com.kh.dlog.mainmenu.photo.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.mainmenu.photo.model.dao.PhotoDao;
import com.kh.dlog.mainmenu.photo.model.vo.Photo;

@Service
public class PhotoServiceImpl implements PhotoService{
	
	// field
	@Autowired
	private PhotoDao pDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// method
	@Override
	public int insertPhoto(ArrayList<Photo> p) { // 사진게시판 작성 
		return pDao.insertPhoto(sqlSession, p);
	}

	@Override
	public int deletePhoto(int photoNo) { // 사진게시판 삭제
		return pDao.deletePhoto(sqlSession, photoNo);
	}

	@Override
	public ArrayList<Photo> selectPhotoList(int photoWriter) { // 사진게시판 전체 조회
		return pDao.selectPhotoList(sqlSession, photoWriter);
	}


}
