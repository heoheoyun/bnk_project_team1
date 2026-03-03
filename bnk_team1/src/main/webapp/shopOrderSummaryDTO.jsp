<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, util.DBaccess"%>
<%!
    public class ShopOrderSummary {
        private String shopno;
        private String pcode;
        private String pname;
        private int amount;

        public String getShopno() {
        	return shopno; 
        }
        public void setShopno(String shopno) { 
        	this.shopno = shopno;
        }
        public String getPcode() {
        	return pcode; 
        }
        public void setPcode(String pcode) { 
        	this.pcode = pcode; 
        }
        public String getPname() {
        	return pname;
        }
        public void setPname(String pname) { 
        	this.pname = pname; 
        }
        public int getAmount() { 
        	return amount; 
        }
        public void setAmount(int amount) {
        	this.amount = amount; 
        }
    }

    public List<ShopOrderSummary> getSummaryList() {
        List<ShopOrderSummary> list = new ArrayList<>();
        String sql = "SELECT o.shopno, o.pcode, p.pname, SUM(o.amount) as total_amount " +
                     "FROM tbl_order_202101 o " +
                     "JOIN tbl_product_202101 p ON o.pcode = p.pcode " +
                     "GROUP BY o.shopno, o.pcode, p.pname " +
                     "ORDER BY o.shopno ASC";

        try (Connection conn = DBaccess.getConn();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                ShopOrderSummary item = new ShopOrderSummary();
                item.setShopno(rs.getString("shopno"));
                item.setPcode(rs.getString("pcode"));
                item.setPname(rs.getString("pname"));
                item.setAmount(rs.getInt("total_amount"));
                list.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
%>