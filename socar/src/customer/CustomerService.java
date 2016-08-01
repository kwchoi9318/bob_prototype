package customer;

import java.util.List;

import global.CommonService;

public interface CustomerService extends CommonService{
	public void sendQuery(CustomerBean customer);
	public CustomerBean announce();
	public List<CustomerBean> list();
	public List<CustomerBean> findBy(String keyword);
}
