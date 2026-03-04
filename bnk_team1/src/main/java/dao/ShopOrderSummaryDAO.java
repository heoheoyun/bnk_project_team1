package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.ShopOrderSummaryDTO;
import util.DBaccess;

public class ShopOrderSummaryDAO {

	public List<ShopOrderSummaryDTO> getShopOrderSummary() {
		List<ShopOrderSummaryDTO> list = new ArrayList<>();

		String sql = "SELECT o.shopno, o.pcode, p.pname, SUM(o.amount) AS total_amount "
				   + "FROM tbl_order_202101 o "
				   + "JOIN tbl_product_202101 p ON o.pcode = p.pcode "
				   + "GROUP BY o.shopno, o.pcode, p.pname "
				   + "ORDER BY o.shopno ASC";

		try (Connection conn = DBaccess.getConn();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			while (rs.next()) {
				ShopOrderSummaryDTO dto = new ShopOrderSummaryDTO();
				dto.setShopno(rs.getString("shopno"));
				dto.setPcode(rs.getString("pcode"));
				dto.setPname(rs.getString("pname"));
				dto.setAmount(rs.getInt("total_amount"));
				list.add(dto);
			}
			DBaccess.close(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}