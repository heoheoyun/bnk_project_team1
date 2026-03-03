<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ include file="shopOrderSummaryDTO.jsp" %>

<%
    List<ShopOrderSummary> list = getSummaryList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점포별 주문 현황</title>
</head>
<body>
    <h2>점포별 주문 현황</h2>
    <table border="1">
        <thead>
            <tr>
                <th>할인점코드</th>
                <th>제품코드</th>
                <th>제품명</th>
                <th>주문 총수량</th>
            </tr>
        </thead>
        <tbody>
            <% 
                if (list != null && !list.isEmpty()) {
                    for (ShopOrderSummary item : list) { 
            %>
                <tr>
                    <td><%= item.getShopno() %></td>
                    <td><%= item.getPcode() %></td>
                    <td><%= item.getPname() %></td>
                    <td><%= item.getAmount() %></td>
                </tr>
            <% 
                    }
                } else { 
            %>
                <tr>
                    <td colspan="4">조회된 데이터가 없습니다.</td>
                </tr>
            <% 
                } 
            %>
        </tbody>
    </table>
</body>
</html>