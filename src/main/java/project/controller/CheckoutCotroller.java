package project.controller;

import project.model.*;
import project.service.CartService;
import project.service.OrderService;
import project.service.ProductOrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CheckoutCotroller", value = "/checkout")
public class CheckoutCotroller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ac = (User) request.getSession().getAttribute("auth");
        List<Cart> listCart = CartService.getAllByIda(String.valueOf(ac.getIdUser()));
        request.setAttribute("listCart", listCart);
       // List<Payment> listPm = OrderService.getAllPayment();
        //request.setAttribute("listPm", listPm);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
//        String payment = request.getParameter("payment");
//        String idCart = request.getParameter("idCart");
        User ac = (User) request.getSession().getAttribute("auth");
        List<Cart> listCart = CartService.getAllByIda(String.valueOf(ac.getIdUser()));

        OrderService.insertOrderByIdAcc(firstName, lastName, email, phone, address, String.valueOf(ac.getIdUser()));
        List<Order> orderList = OrderService.getAllOrderById(String.valueOf(ac.getIdUser()));
        String idO = String.valueOf(orderList.get(orderList.size()-1).getIdorder());
        for (Cart c : listCart) {
            ProductOrderService.addProductToProductOrder(idO, String.valueOf(c.getIdProduct()), String.valueOf(c.getQuantity()));
        }
        OrderService.deleteProductByIdCart(String.valueOf(ac.getIdUser()));
        response.sendRedirect("home");
    }
}
