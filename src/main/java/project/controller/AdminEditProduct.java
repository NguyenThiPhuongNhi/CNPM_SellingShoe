package project.controller;

import project.model.CategoryItem;
import project.model.Product;
import project.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminEditProduct", value = "/admin-edit-product")
public class AdminEditProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CategoryItem> categoryItems = ProductService.getListC();
        String idP = request.getParameter("idP");
        Product p = ProductService.getProductById(idP);

        request.setAttribute("p",p);
        request.setAttribute("categoryItems",categoryItems);
        request.getRequestDispatcher("profilePro.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name") ;
        String img = request.getParameter("img");
        String quantity= request.getParameter("quantity");
        String status= request.getParameter("status");
        String detailPro= request.getParameter("detailPro");
        String price= request.getParameter("price");
        String idCatItem= request.getParameter("idCi");
        String idPro = request.getParameter("idP");

        ProductService.editProductById(name,price,status,detailPro,quantity,idPro,idCatItem , img);
        response.sendRedirect("adminProduct");
    }
}
