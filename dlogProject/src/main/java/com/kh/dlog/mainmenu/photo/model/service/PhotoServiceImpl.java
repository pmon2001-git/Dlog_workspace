package com.kh.dlog.mainmenu.photo.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.common.model.vo.PageInfo;
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
	public int deletePhoto(int[] intNums) { // 사진게시판 삭제
		return pDao.deletePhoto(sqlSession, intNums);
	}

	@Override
	public int selectPhotoListCount(int photoWriter) {
		return pDao.selectPhotoListCount(sqlSession, photoWriter);
	}
	
	@Override
	public ArrayList<Photo> selectPhotoList(int photoWriter, PageInfo pi) { // 사진게시판 전체 조회
		return pDao.selectPhotoList(sqlSession, photoWriter, pi);
	}

}
