package servlets;

import java.io.IOException;
import java.util.List;

import dao.ShopOrderSummaryDAO;
import dto.ShopOrderSummaryDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/shopOrderSummary")
public class ShopOrderSummaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ShopOrderSummaryDAO dao = new ShopOrderSummaryDAO();
		List<ShopOrderSummaryDTO> list = dao.getShopOrderSummary();

		request.setAttribute("list", list);
		request.getRequestDispatcher("/shopOrderSummary.jsp").forward(request, response);
	}
}