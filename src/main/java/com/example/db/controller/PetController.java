package com.example.db.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.db.dao.PetDao;
import com.example.db.vo.MemberVo;
import com.example.db.vo.PetVo;

import jakarta.servlet.http.HttpSession;

@Controller
public class PetController {
	
	@Autowired
	PetDao petDao;
	
	// petInsert.jsp - 창만 띄우기
	@RequestMapping("/insert/petInsert_form.do")
	public String petInsert_form() {
		
	    return "insert/petInsert";
	}
	
	// petInsert.jsp - 대표동물 등록 한마리만
	@RequestMapping("/insert/petInsert.do")
	public String petInsert(PetVo vo, HttpSession session) {

	    MemberVo user = (MemberVo) session.getAttribute("user");
	    if (user == null) user = (MemberVo) session.getAttribute("loginMember");
	    if (user == null) return "redirect:/member/loginForm.do";

	    vo.setMem_idx(user.getMem_idx());

	    // 대표동물로 등록하려는 경우
	    if ("Y".equals(vo.getIs_primary())) {

	        // 1. 기존 대표 전부 N
	        petDao.resetPrimaryByMemIdx(user.getMem_idx());

	        // 2. insert
	        petDao.insert(vo);

	        // 3. 방금 insert된 펫을 Y로 변경
	        petDao.setPrimaryByPetIdx(vo.getPet_idx());

	    } else {

	        vo.setIs_primary("N");
	        petDao.insert(vo);
	    }

	    return "redirect:/profile/petProfile_form.do";
	}
	
	
	// petUpdate.jsp - 펫 정보 수정 창 띄우기
	@RequestMapping("/update/petUpdate_form.do")
	public String petUpdateForm(
	        int pet_idx,
	        HttpSession session,
	        Model model) {

	    MemberVo user = (MemberVo) session.getAttribute("user");
	    if (user == null) {
	        return "redirect:/member/loginForm.do";
	    }

	    PetVo vo = petDao.selectOneByPetIdx(pet_idx);

	    if (vo == null || vo.getMem_idx() != user.getMem_idx()) {
	        return "redirect:/profile/petProfile_form.do";
	    }

	    model.addAttribute("vo", vo);
	    model.addAttribute("mode", "update");

	    return "update/petUpdate";
	}
	

	
	// petUpdate.jsp - 수정 시키기
	@RequestMapping("/update/petUpdate.do") 
	public String petUpdate(PetVo vo, HttpSession session) {
		// 로그인 확인
	    MemberVo user = (MemberVo) session.getAttribute("user");
	    if (user == null) user = (MemberVo) session.getAttribute("loginMember");
	    if (user == null) return "redirect:/member/loginForm.do";
	    
	    // 내 펫인지 확인
	    PetVo dbVo = petDao.selectOneByPetIdx(vo.getPet_idx());
	    if (dbVo == null || dbVo.getMem_idx() != user.getMem_idx()) {
	        return "redirect:/profile/petProfile_form.do";
	    }
	    
	    // 

	    // ⭐ 대표동물 선택했을 때
//	    if ("Y".equals(vo.getIs_primary())) {
//	        petDao.updatePrimaryPet(vo.getPet_idx());   // 🔥 이 줄이 핵심
//	    } else {
//	        petDao.update(vo); // 그냥 일반 업데이트
//	    }
	    
	    if ("Y".equals(vo.getIs_primary())) {

	        petDao.resetPrimaryByMemIdx(user.getMem_idx());
	        petDao.update(vo); 
	        petDao.setPrimaryByPetIdx(vo.getPet_idx());

	    } else {

	        petDao.update(vo);
	    }

	    return "redirect:/profile/petProfile_form.do";
	}
	
	
// 지우지 말 것!
//	@RequestMapping("/update/petUpdate.do")
//	public String petUpdate(PetVo vo, HttpSession session) {
//
//	    MemberVo user = (MemberVo) session.getAttribute("user");
//	    if (user == null) user = (MemberVo) session.getAttribute("loginMember");
//	    if (user == null) return "redirect:/member/loginForm.do";
//
//	    PetVo dbVo = petDao.selectOneByPetIdx(vo.getPet_idx());
//	    if (dbVo == null || dbVo.getMem_idx() != user.getMem_idx()) {
//	        return "redirect:/profile/petProfile_form.do";
//	    }
//
//	    // ⭐ 대표동물 선택했을 때
////	    if ("Y".equals(vo.getIs_primary())) {
////	        petDao.updatePrimaryPet(vo.getPet_idx());   // 🔥 이 줄이 핵심
////	    } else {
////	        petDao.update(vo); // 그냥 일반 업데이트
////	    }
//	    
//	    if ("Y".equals(vo.getIs_primary())) {
//
//	        petDao.resetPrimaryByMemIdx(user.getMem_idx());
//	        petDao.setPrimaryByPetIdx(vo.getPet_idx());
//
//	    } else {
//
//	        petDao.update(vo);
//	    }
//
//	    return "redirect:/profile/petProfile_form.do";
//	}
	

	
	// petProfile.jsp - 반려동물 삭제 기능 구현
	@PostMapping("/petDelete.do")
	public String petDelete(int pet_idx, HttpSession session) {
	    // 세션 체크
	    // 내 펫인지 체크
	    petDao.delete(pet_idx);		// 여기가 에러??
	    return "redirect:/profile/petProfile_form.do";
	}
	


    
    
    // petProfile.jsp - 펫 정보조회
    @RequestMapping("/profile/petProfile_form.do")
    public String petProfile(HttpSession session, Model model) {

        // 1. 로그인 유저 가져오기
        MemberVo user = (MemberVo) session.getAttribute("user");
        if (user == null) {
            return "redirect:/member/loginForm.do";
        }

        // 2. 로그인한 회원의 반려동물 목록 조회
        List<PetVo> petList = petDao.selectByMemIdx(user.getMem_idx());

        // 3. JSP로 내려주기
        model.addAttribute("petList", petList);

        // 4. JSP 이동
        return "profile/petProfile";
    }
	
	
}
