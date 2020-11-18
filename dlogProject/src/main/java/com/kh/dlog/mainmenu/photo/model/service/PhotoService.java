package com.kh.dlog.mainmenu.photo.model.service;

import java.util.ArrayList;

import com.kh.dlog.mainmenu.photo.model.vo.Photo;

public interface PhotoService {
	
	int insertPhoto(Photo p);
	int deletePhoto(int photoNo);
	ArrayList<Photo> selectPhotoList(int photoWriter);
	
}
