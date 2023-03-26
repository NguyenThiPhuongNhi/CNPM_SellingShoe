package project.controller;

import project.model.*;
import project.service.CartService;
import project.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "CartController", value = "/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User ac = (User) request.getSession().getAttribute("auth");
        String product_id = request.getParameter("product_id");
        String command = request.getParameter("command");
        String url = "show-cart";
        String quantity = "1";
        if (ac != null) {
            Cart cart = CartService.checkProduct(product_id, String.valueOf(ac.getIdUser()));


            try {

                switch (command) {
                    case "insertItem":
                        if (cart == null) {
                            CartService.addProductToCart(product_id, quantity, String.valueOf(ac.getIdUser()));
                        } else {
                            int quanTiTyC = cart.getQuantity();
                            CartService.upQuantityProductByCart(String.valueOf(quanTiTyC + 1), product_id, String.valueOf(ac.getIdUser()));
                        }

                        url = "home";
                        break;


                    case "addItem":
                        if (cart != null) {
                            int quantity1 = cart.getQuantity();
                            CartService.upQuantityProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(ac.getIdUser()));
                        }
                        url = "show-cart";
                        break;
                    case "subItem":
                        int quantity1 = cart.getQuantity();
                        if (quantity1 > 1) {
                            CartService.upQuantityProductByCart(String.valueOf(quantity1 - 1), product_id, String.valueOf(ac.getIdUser()));
                        }
                        if (quantity1 == 1) {
                            CartService.deleteProductByIdpAndIda(product_id, String.valueOf(ac.getIdUser()));
                        }
                        url = "show-cart";
                        break;
                    case "deleteItem":
                        CartService.deleteProductByIdpAndIda(product_id, String.valueOf(ac.getIdUser()));
                        url = "show-cart";
                        break;
                    default:

                        break;

                }

                request.getRequestDispatcher(url).forward(request, response);
            } catch (NumberFormatException e) {
                throw new RuntimeException(e);

            }
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

