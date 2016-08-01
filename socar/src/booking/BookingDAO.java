package booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import car.CarBean;

public class BookingDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	private static BookingDAO instance = new BookingDAO();
	
	public static BookingDAO getInstance() {
		return instance;
	}

	private BookingDAO() {
	}

	public List<CarBean> findBy(BookingBean booking) {
		List<CarBean> list = new ArrayList<CarBean>();
		String sql = "select * from car where car_model = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			pstmt.setString(1, booking.getModel());
			
			while(rs.next()){
				CarBean temp = new CarBean();
				temp.setZone(rs.getString("CAR_ZONE"));
				temp.setModel(rs.getString("CAR_MODEL"));
				temp.setPayKm(rs.getString("PAY_KM"));
				temp.setOil(rs.getString("OIL"));
				temp.setRentTime(rs.getString("RENT_TIME"));
				list.add(temp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public int insertHistory(CarBean car) {  
		int result = 0;
		String sql = "insert into history (hist_seq, rent_date, rent_zone, car_model, pay_km) "
				+ "values (hist_seq.nextval, ?, ?, ?, ?)"; 	//id 후에 추가...
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, car.getRentTime());
			pstmt.setString(2, car.getZone());
			pstmt.setString(3, car.getModel());
			pstmt.setString(4, car.getPayKm());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
