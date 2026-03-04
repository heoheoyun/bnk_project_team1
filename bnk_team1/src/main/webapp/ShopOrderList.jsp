<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, java.util.*, util.DBaccess"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop order list</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <h3>주문목록</h3>
	<section>
        <table border="1">
            <tr>
                <th>할인점 코드</th>
                <th>점포명</th>
                <th>주문번호</th>
                <th>주문일자</th>
                <th>제품코드</th>
                <th>제품명</th>
                <th>주문수량</th>
                <th>단가</th>
                <th>소비자 가격</th>
                <th>할인가격</th>
            </tr>
            <%
            String sql = "SELECT s.shopno, s.shopname, " +
                    " SUBSTR(o.orderno,1,4)||'-'||SUBSTR(o.orderno,5,4) AS orderno, " +
                    " TO_CHAR(TO_DATE(o.orderdate,'YYYYMMDD'),'YYYY-MM-DD') AS orderdate, " +
                    " p.pcode, p.pname, o.amount, " +
                    " TO_CHAR(p.cost,'999,999') AS cost, " +
                    " TO_CHAR(p.cost * o.amount, '999,999') AS total, " +
                    " TO_CHAR((p.cost * o.amount) - (p.cost * o.amount * s.discount / 100), '999,999') AS dc " +
                    " FROM tbl_order_202101 o " +
                    " JOIN tbl_shop_202101 s ON o.shopno = s.shopno " +
                    " JOIN tbl_product_202101 p ON o.pcode = p.pcode " +
                    " ORDER BY o.orderno ASC";
           Connection conn = DBaccess.getConn();
	       PreparedStatement pstmt = conn.prepareStatement(sql);
	       ResultSet rs = pstmt.executeQuery();
	
	       while(rs.next()) {
            %>
            <tr>
            	<td><%= rs.getString("shopno") %></td>
                <td><%= rs.getString("shopname") %></td>
                <td><%= rs.getString("orderno") %></td>
                <td><%= rs.getString("orderdate") %></td>
                <td><%= rs.getString("pcode") %></td>
                <td><%= rs.getString("pname") %></td>
                <td><%= rs.getString("amount") %></td>
                <td><%= rs.getString("cost") %></td>
                <td><%= rs.getString("total") %></td>
                <td><%= rs.getString("dc") %></td>
            </tr>
            <%
                    }
                    rs.close();
                    pstmt.close();
                    conn.close();
              %>
        </table>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>