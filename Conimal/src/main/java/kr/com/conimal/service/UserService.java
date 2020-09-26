package kr.com.conimal.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.com.conimal.model.command.LoginCommand;
import kr.com.conimal.model.dto.UserDto;

public interface UserService {
	// 회원가입 
	public int join(UserDto userDto) throws Exception;
	
	// 아이디 중복 체크
	public int checkId(String user_id) throws Exception;
	
	// 이메일 중복 체크
	public int checkEmail(String email) throws Exception;

	// 닉네임 중복 체크 
	public int checkNick(String nickname) throws Exception;
	
	// 세션 서비스
	public void setSession(HttpSession session, LoginCommand lc);
		
	// 로그인 
	public UserDto login(UserDto userDto);
	
	// ID 찾기 (회원정보 가져오기)
	public UserDto selectUser(String user_id);
	
	/* 비밀번호 찾기
	public String findPassword(UserDto userDto);*/
	
	// API 로그인 
	public void authentication(UserDto userDto);
	
	// 회원정보 가져오기
	public UserDto getUserInfo(String user_id);
	
	
}