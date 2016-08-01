package booking;

import java.util.List;

import car.CarBean;

public class BookingServiceImpl implements BookingService{
	private static BookingService instance = new BookingServiceImpl();
	
	public static BookingService getInstance() {
		return instance;
	}

	private BookingServiceImpl() {
	}
	
	BookingDAO dao = BookingDAO.getInstance();
	
	@Override
	public List<CarBean> socarSearch(BookingBean booking) {
		return dao.findBy(booking);
	}

	@Override
	public void reserve(CarBean car) {
		dao.insertHistory(car);
	}
}
