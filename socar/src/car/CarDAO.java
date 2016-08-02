package car;

public class CarDAO {
	private static CarDAO instnace = new CarDAO();
	
	public static CarDAO getInstnace() {
		return instnace;
	}

	private CarDAO() {
	}
}
