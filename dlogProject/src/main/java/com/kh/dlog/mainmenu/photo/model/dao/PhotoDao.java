package com.kh.dlog.mainmenu.photo.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.common.model.vo.PageInfo;
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

	public int deletePhoto(SqlSessionTemplate sqlSession, int[] intNums) { // 사진게시판 글 삭제
		int result = 0;
		
		for (int i = 0 ; i < intNums.length ; i++) {
			result = sqlSession.delete("photoMapper.deletePhoto", intNums[i]);
			if(result == 0) {
				break;
			}
		}
		
		return result;
	}
	
	public int selectPhotoListCount(SqlSessionTemplate sqlSession, int photoWriter) {
		return sqlSession.selectOne("photoMapper.selectPhotoListCount", photoWriter);
	}
	
	public ArrayList<Photo> selectPhotoList(SqlSessionTemplate sqlSession, int photoWriter, PageInfo pi) { // 사진게시판 불러오기
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("photoMapper.selectPhotoList", photoWriter, rowBounds);
	}
	
}
