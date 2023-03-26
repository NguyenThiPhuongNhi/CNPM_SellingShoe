package project.controller;


import project.model.*;
import project.service.ProductService;
//import project.service.SliderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list8Product = ProductService.get8Product();
        List<Product> list8ProductNew = ProductService.get8ProductNew();
        request.setAttribute("list8Product", list8Product);
        request.setAttribute("list8ProductNew", list8ProductNew);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
