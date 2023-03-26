package project.controller;

import project.model.User;
import project.model.Cart;
import project.service.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowCartController", value = "/show-cart")
public class ShowCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User ac = (User) request.getSession().getAttribute("auth");
        List<Cart> listCart = CartService.getAllByIda(String.valueOf(ac.getIdUser()));
        request.setAttribute("listCart",listCart);
        request.getRequestDispatcher("cart.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
