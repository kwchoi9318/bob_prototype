package member;

import java.util.List;

import global.CommonService;

public interface MemberService extends CommonService{
	public MemberBean findById(String findID);//회원정보보기
	public String regist(MemberBean member);//회원가입
	public void updateInfo(MemberBean member);//회원정보수정
	public String login(MemberBean member);//로그인
	public void logout();//로그아웃
	public void leave(MemberBean member);//계정삭제
	public MemberBean getSession();
	public List<?> list();
}
