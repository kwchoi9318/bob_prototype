package customer;

import javax.swing.JOptionPane;

public class CustomerController {
	public static void main(String[] args) {
		CustomerService service = CustomerServiceImpl.getInstance();
		while(true){
			switch (JOptionPane.showInputDialog("1 : 1대1 문의, 2 : 공지사항 확인")) {
			case "1":
				CustomerBean temp1 = new CustomerBean();
				temp1.setValue(JOptionPane.showInputDialog("문의 분류"));
				temp1.setTitle(JOptionPane.showInputDialog("제목"));
				temp1.setContent(JOptionPane.showInputDialog("문의 내용"));
				temp1.setFileName(JOptionPane.showInputDialog("첨부 파일 이름"));
				temp1.setRegDate();
				service.sendQuery(temp1);
				break;

			case "2":
				JOptionPane.showMessageDialog(null, service.list().toString());
				break;

			default:
				break;
			}
		}
		
	}
}
