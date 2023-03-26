package project.controller;

import project.model.Product;
import project.model.User;
import project.service.AccountManagement;
import project.service.ProductManagement;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.channels.AcceptPendingException;
import java.util.List;

@WebServlet(name = "AdminHome", value = "/adminHome")
public class AdminHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = ProductManagement.getAllProduct();
        List<User> listUser = AccountManagement.getAllUser();

//        List<Review>list = ReviewService.getAllReview();
//        request.setAttribute("list", list);
        request.setAttribute("listUser",listUser);
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("adminIndex.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
