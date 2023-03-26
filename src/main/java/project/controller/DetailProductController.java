package project.controller;

import project.model.Product;
//import project.model.Review;
import project.service.ProductService;
//import project.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailProductController", value = "/detail")
public class DetailProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Product product = ProductService.getProductById(id);
//        List<Review> reviewList = ReviewService.getAllReviewByIdp(String.valueOf(product.getId()));
//        request.setAttribute("reviewList", reviewList);
        request.setAttribute("product", product);
        request.getRequestDispatcher("detail.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
