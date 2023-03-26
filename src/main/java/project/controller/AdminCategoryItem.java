package project.controller;

import project.model.Category;
import project.model.CategoryItem;
import project.model.User;
import project.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminCategory", value = "/adminCategory")
public class AdminCategoryItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CategoryItem> listCatItem = ProductService.getListC();

        request.setAttribute("listCatItem", listCatItem);
        request.getRequestDispatcher("adminCategory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
