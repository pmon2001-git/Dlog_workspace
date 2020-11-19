package com.kh.dlog.mainmenu.photo.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.dlog.mainmenu.photo.model.service.PhotoService;
import com.kh.dlog.mainmenu.photo.model.vo.Photo;

@Controller
public class PhotoController {
	
	@Autowired
	private PhotoService pService;
	
	@RequestMapping("enroll.ph")
	public String enrollPhoto() {
		return "mainmenu/photo/photoEnroll";
	}
	
	@RequestMapping(value="insert.ph", method=RequestMethod.POST)
	public String insertPhoto(Photo p, @RequestParam(required=false) List<MultipartFile> upfiles, HttpSession session, Model model) {
		
		ArrayList<Photo> list = p.getList();
		if(!upfiles.get(0).getOriginalFilename().equals("")) {
			for(int i = 0 ; i < upfiles.size() ; i++) {
				String changeName = saveFile(upfiles.get(i), session);
				if(changeName != null) {
					list.get(i).setPhotoOriginName(upfiles.get(i).getOriginalFilename());
					list.get(i).setPhotoChangeName("resources/uploads/" + changeName);
				}
			}
		}
		
		int result = pService.insertPhoto(list);
		if(result > 0) {
			session.setAttribute("alertMsg", "게시판 등록 성공!!");
			return "redirect:selectList.ph";
		}else {
			session.setAttribute("alertMsg", "게시판 등록 실패..");
			return "redirect:selectList.ph";
		}
		
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename();
		String savePath = session.getServletContext().getRealPath("/resources/uploads/");
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random()*90000+10000);
		String ext = originName.substring(originName.lastIndexOf("."));
		String changeName = currentTime + ranNum + ext;
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return changeName;
	}
	
	@RequestMapping("delete.ph")
	public String deletePhoto() {
		return "";
	}
	
	@RequestMapping("selectList.ph")
	public String selectList(Model model) {
		
		ArrayList<Photo> list = pService.selectPhotoList(2);
		model.addAttribute("list", list);
		return "mainmenu/photo/photoMain";
		
	}
	
	
	
//	@RequestMapping("list.bo")
//	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, Model model) {
//		int listCount = bService.selectListCount();
//		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
//		ArrayList<Board> list = bService.selectList(pi);
//		
//		model.addAttribute("pi",pi);
//		model.addAttribute("list",list);
//		
//		return "board/boardListView";
//		
//	}
//	
//	@RequestMapping("enrollForm.bo")
//	public String enrollForm() {
//		return "board/boardEnrollForm";
//	}
//	
//	@RequestMapping("insert.bo")
//	public String insertBoard(Board b, MultipartFile upfile, HttpSession session, Model model) {
//		if(!upfile.getOriginalFilename().equals("")) {
//			String changeName = saveFile(upfile, session);
//			if(changeName != null) {
//				b.setOriginName(upfile.getOriginalFilename());
//				b.setChangeName("resources/uploadFiles/" + changeName);
//			}
//		}
//		System.out.println(b);
//		int result = bService.insertBoard(b);
//		if(result > 0) {
//			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다!");
//			return "redirect:list.bo";
//		} else {
//			model.addAttribute("errorMsg","게시글 등록 실패..");
//			return "common/errorPage";
//		}
//		
//	}
//	
//	
//	
//	@RequestMapping("detail.bo")
//	public ModelAndView selectBoard(int bno, ModelAndView mv) {
//		int result = bService.increaseCount(bno);
//		if(result > 0) {
//			mv.addObject("b",bService.selectBoard(bno))
//			  .setViewName("board/boardDetailView");
//		}else {
//			mv.addObject("errorMsg\",\"유효한 게시글이 아니거나 삭제된 게시글입니다.")
//			  .setViewName("common/errorPage");
//		}
//		return mv;
//	}
//	
//	@RequestMapping("delete.bo")
//	public String deleteBoard(int bno, String fileName, Model model, HttpSession session) {
//		int result = bService.deleteBoard(bno);
//		if(result > 0) {
//			
//			if(!fileName.equals("")) {
//				String removeFilePath = session.getServletContext().getRealPath(fileName);
//				new File(removeFilePath).delete();
//			}
//			
//			session.setAttribute("alertMsg","게시글 삭제 성공!!");
//			return "redirect:list.bo";
//			
//		}else {
//			model.addAttribute("errorMsg","게시글 삭제 실패!");
//			return "common/errorPage";
//		}
//	}
//	
//	@RequestMapping("updateForm.bo")
//	public String updateForm(int bno, Model model) {
//		Board b = bService.selectBoard(bno);
//		model.addAttribute("b",b);
//		return "board/boardUpdateForm";
//	}
//	
//	@RequestMapping("update.bo")
//	public String updateBoard(Board b, MultipartFile reupfile, HttpSession session, Model model) {
//		
//		// 새로 넘어온 첨부파일이 있을 경우
//		if(!reupfile.getOriginalFilename().equals("")) {
//			
//			// 기존 파일 삭제(서버)
//			if(b.getOriginName() != null) {
//				
//				String removeFilePath = session.getServletContext().getRealPath(b.getChangeName());
//				new File(removeFilePath).delete();
//				
//			}
//			
//			// 새로 넘어온 파일 업로드
//			String changeName = saveFile(reupfile, session);
//			b.setOriginName(reupfile.getOriginalFilename());
//			b.setChangeName("resources/uploadFiles/" + changeName);
//			
//		}
//		
//		int result = bService.updateBoard(b);
//		if(result > 0) {
//			session.setAttribute("alertMsg", "게시글 수정 성공!!");
//			return "redirect:detail.bo?bno=" + b.getBoardNo();
//		}else {
//			model.addAttribute("errorMsg", "게시글 수정 실패..");
//			return "common/errorPage";
//		}
//	}
//	
//	@ResponseBody
//	@RequestMapping(value="rlist.bo", produces="application/json; charset=utf-8")
//	public String selectReplyList(int bno) {
//		ArrayList<Reply> list = bService.selectReplyList(bno);
//		return new Gson().toJson(list);
//	}
//	
//	@ResponseBody
//	@RequestMapping("rinsert.bo")
//	public String insertReply(Reply r) {
//		int result = bService.insertReply(r);
//		
//		if(result > 0) {
//			return "success";
//		}else {
//			return "fail";
//		}
//		
//	}
	
	
}
