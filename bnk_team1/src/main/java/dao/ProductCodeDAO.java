package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductCodeDAO {
	public static List<dto.ProductDTO> getData(){
		List<dto.ProductDTO> list = new ArrayList<>();
		try {
			dto.ProductDTO tmp;
			Connection conn = util.DBaccess.getConn();
			PreparedStatement pstmt = conn.prepareStatement("select pcode, pname, cost, (cost*0.9)as ten, (cost*0.85)as fif from tbl_product_202101");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				tmp = new dto.ProductDTO();
				tmp.setPcode(rs.getString("pcode"));
				tmp.setPname(rs.getString("pname"));
				tmp.setCost(rs.getInt("cost"));
				tmp.setTen(rs.getInt("ten"));
				tmp.setFif(rs.getInt("fif"));
				list.add(tmp);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("ProductCodeDAO에서 에러났어요.");
			System.out.println(e);
		}
		return list;
	}
}
