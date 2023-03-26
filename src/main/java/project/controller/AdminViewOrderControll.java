package project.controller;

import project.model.CategoryItem;
import project.model.Order;
import project.service.OrderService;
import project.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminViewOrderControll", value = "/adminViewOrder")
public class AdminViewOrderControll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ido = request.getParameter("idorder");
        Order orders = OrderService.viewUserOrder(ido);

        request.setAttribute("orders", orders);
        request.getRequestDispatcher("adminViewOrder.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
