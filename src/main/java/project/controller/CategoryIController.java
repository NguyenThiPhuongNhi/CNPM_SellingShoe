package project.controller;



import project.model.Category;
import project.model.CategoryItem;
import project.model.Product;
import project.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryI", value = "/categoryi")
public class CategoryIController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String idI = request.getParameter("idI");
        List<Product> listPByIdi = ProductService.getListItemCatById(idI);
        CategoryItem lci = ProductService.getItemName(Integer.parseInt(idI));
        Category c = ProductService.getNameC(lci.getIdCat());
        String checked = "checked";
        request.setAttribute("checked4", checked);

        request.setAttribute("c", c);
        request.setAttribute("lci", lci);
        request.setAttribute("listPByIdi", listPByIdi);
        request.getRequestDispatcher("CategoryItem.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
