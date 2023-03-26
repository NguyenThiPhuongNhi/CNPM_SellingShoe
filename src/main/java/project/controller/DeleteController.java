package project.controller;

import project.service.ProductManagement;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteControl", value = "/DeleteControl")
public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idPro= request.getParameter("idPro");
        ProductManagement.delProduct(idPro);
        response.sendRedirect("adminProduct");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
