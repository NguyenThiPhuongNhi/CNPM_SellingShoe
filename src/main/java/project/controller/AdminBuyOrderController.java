package project.controller;

import project.model.User;
import project.model.Cart;
import project.model.Order;
import project.service.CartService;
import project.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminBuy-OrderController", value = "/admin-buy-order")
public class AdminBuyOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order>orderList = OrderService.getAllOrder();
        User ac = (User) request.getSession().getAttribute("auth");
        List<Cart> listCart = CartService.getAllByIda(String.valueOf(ac.getIdUser()));

        request.setAttribute("orderList",orderList);
        request.getRequestDispatcher("adminBuyOrder.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
