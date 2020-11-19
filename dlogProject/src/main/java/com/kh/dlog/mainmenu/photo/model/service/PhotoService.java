package com.kh.dlog.mainmenu.photo.model.service;

import java.util.ArrayList;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.photo.model.vo.Photo;

public interface PhotoService {
	
	int insertPhoto(ArrayList<Photo> p);
	int deletePhoto(int[] intNums);
	int selectPhotoListCount(int photoWriter);
	ArrayList<Photo> selectPhotoList(int photoWriter, PageInfo pi);
	
}
