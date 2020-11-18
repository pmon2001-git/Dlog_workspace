package com.kh.dlog.mainmenu.photo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.mainmenu.photo.model.vo.Photo;

@Repository
public class PhotoDao {
	
	public int insertPhoto(SqlSessionTemplate sqlSession, Photo p) { // 사진게시판 글 작성 
		return 0;
	}

	public int deletePhoto(SqlSessionTemplate sqlSession, int photoNo) { // 사진게시판 글 삭제
		return 0;
	}

	public ArrayList<Photo> selectPhotoList(SqlSessionTemplate sqlSession, int photoWriter) { // 사진게시판 불러오기
		return null;
	}
	
}
