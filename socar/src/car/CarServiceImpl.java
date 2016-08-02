package car;

public class CarServiceImpl implements CarService {
	private static CarService instance = new CarServiceImpl();
	
	public static CarService getInstance() {
		return instance;
	}

	private CarServiceImpl() {
	}
}
