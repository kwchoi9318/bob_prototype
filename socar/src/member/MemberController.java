package member;

import javax.swing.JOptionPane;

public class MemberController {
	public static void main(String[] args) {
	
		MemberService service = MemberServiceImpl.getInstance();
		while (true) {
			switch (JOptionPane.showInputDialog("1.회원가입 2.로그인 3.ID조회 4.회원정보수정 5.로그아웃 6.계정삭제 7.세션확인")) {
			case "1":
				MemberBean mem = new MemberBean();
				String input = JOptionPane.showInputDialog("ID, PW, 이름, 생년월일, 성별, 전화번호, 주소, 거주지역, 직업, 면허종류, 면허증 지역, 면허증 번호, 면허 만료일, 면허 발급일");
				String[] arr = input.split(",");
				mem.setId(arr[0]);
				mem.setPw(arr[1]);
				mem.setName(arr[2]);
				mem.setBirth(arr[3]);
				mem.setGender(arr[4]);
				mem.setPhone(arr[5]);
				mem.setAddress(arr[6]);
				mem.setRegion(arr[7]);
				mem.setJob(arr[8]);
				mem.setLicenceVal(arr[9]);
				mem.setLicenceLocal(arr[10]);
				mem.setLicenceNum(arr[11]);
				mem.setLicenceEnd(arr[12]);
				mem.setLicenceStart(arr[13]);
				String result = service.regist(mem);
				JOptionPane.showMessageDialog(null, result);
				break;
			case "2":
				MemberBean mem1 = new MemberBean();
				String input1 = JOptionPane.showInputDialog("ID,PW");
				String[] arr1 = input1.split(",");
				mem1.setId(arr1[0]);
				mem1.setPw(arr1[1]);
				String result1 = service.login(mem1);
				JOptionPane.showMessageDialog(null, result1);
				break;
			case "3":
				MemberBean mem2 = new MemberBean();
				JOptionPane.showMessageDialog(null,service.findById(JOptionPane.showInputDialog("ID 입력")) );
				break;
			case "4":
				MemberBean temp = new MemberBean();
				String input2 = JOptionPane.showInputDialog("PW,PHONE,job,licenceVal,licenceLocal,licenceNum,licenceEnd,licenceStart,address,region,id");
				String[] inputArr = input2.split(",");
				temp.setPw(inputArr[0]);
				temp.setPhone(inputArr[1]);
				temp.setJob(inputArr[2]);
				temp.setLicenceVal(inputArr[3]);
				temp.setLicenceLocal(inputArr[4]);
				temp.setLicenceNum(inputArr[5]);
				temp.setLicenceEnd(inputArr[6]);
				temp.setLicenceStart(inputArr[7]);
				temp.setAddress(inputArr[8]);
				temp.setRegion(inputArr[9]);
				temp.setId(inputArr[10]);
				service.updateInfo(temp);
				break;
			case "5":
				MemberBean temp2 = new MemberBean();
				service.logout();
				break;
			case "6":
				MemberBean temp3 = new MemberBean();
				String input3 = JOptionPane.showInputDialog("ID,PW");
				String[] arr3 = input3.split(",");
				temp3.setId(arr3[0]);
				temp3.setPw(arr3[1]);
				service.leave(temp3);
				break;
				
			case "7":
				JOptionPane.showMessageDialog(null, service.getSession());
			default:
				break;
			}
		}
	}
}
