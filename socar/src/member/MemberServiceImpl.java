package member;

import java.util.List;

public class MemberServiceImpl implements MemberService{
	
	MemberDAO dao  = MemberDAO.getInstance();
	MemberBean session;
	private static MemberServiceImpl instance = new MemberServiceImpl();
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	private MemberServiceImpl() {

	}
	@Override
	public List<?> findBy(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean findById(String findID) {
		return dao.findById(findID);
	}

	@Override
	public String regist(MemberBean member) {
		String msg = "";
		MemberBean temp = this.findById(member.getId());
		if (temp == null) {
			System.out.println(member.getId()+"가 존재하지 않음, 가입 가능한 ID");
			int result = dao.insert(member);
			if (result == 1) {
				msg = "success";
			}else{
				msg = "fail";
			}
			
		}else{
			System.out.println(member.getId()+"가 존재함, 가입 불가능한 ID");
			msg = "fail";
		}
		
		return msg;
	}

	@Override
	public void updateInfo(MemberBean member) {
		int result = dao.update(member);
		if (result == 1) {
			System.out.println("서비스 수정결과 성공");
		}else{
			System.out.println("서비스 수정결과 실패");
		}
		
	}

	@Override
	public String login(MemberBean member) {
		String result = "";
		if (dao.login(member)) {
			session = dao.findById(member.getId());
			result = session.getName();
			System.out.println("서비스에서 이름 디버깅 :"+result);
		}else{
			result = "로그인 실패";
		}
		return result;
	}

	@Override
	public void logout() {
		System.out.println("삭제");
			session = null;
		
		
	}

	@Override
	public void leave(MemberBean member) {

		if (dao.leave(member)==1) {
			System.out.println("Delete success from DAO");
			session = null;
		}
	}

	@Override
	public List<?> list() {

		return dao.list();
	}
	public MemberBean getSession() {
		System.out.println("세션확인");
		return session;
	}

}
