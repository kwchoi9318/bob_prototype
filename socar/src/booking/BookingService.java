package booking;

import java.util.List;

import car.CarBean;

public interface BookingService {
	public List<CarBean> socarSearch(BookingBean booking);
	public void reserve(CarBean car);
}
