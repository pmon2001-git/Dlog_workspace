package com.kh.dlog.mainmenu.photo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.mainmenu.photo.model.vo.Photo;

@Repository
public class PhotoDao {
	
	public int insertPhoto(SqlSessionTemplate sqlSession, ArrayList<Photo> p) { // 사진게시판 글 작성
		int result = 0;
		
		for(int i = 0 ; i < p.size() ; i++) {
			result = sqlSession.insert("photoMapper.insertPhoto",p.get(i));
			if(result == 0) {
				break;
			}
		}
		
		return result;
		
	}

	public int deletePhoto(SqlSessionTemplate sqlSession, int photoNo) { // 사진게시판 글 삭제
		return 0;
	}
	
	public ArrayList<Photo> selectPhotoList(SqlSessionTemplate sqlSession, int photoWriter) { // 사진게시판 불러오기
		return (ArrayList)sqlSession.selectList("photoMapper.selectPhotoList", photoWriter);
	}
	
}
