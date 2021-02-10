package hsoban;

import java.sql.SQLException;
import java.util.ArrayList;

public class Dao_Temp extends Dao {

	public ArrayList<Temp> getTempList() {
		
		ArrayList<Temp> tempList = new ArrayList<Temp>();

		try {
			connect();
			stmt = con.createStatement();

			String sql = "SELECT * FROM temp";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Temp temp = new Temp(rs.getInt("id"), rs.getString("name"), rs.getString("address"));
				tempList.add(temp);
			}

			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return tempList;
	}
}
