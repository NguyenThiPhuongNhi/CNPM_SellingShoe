package project.service;

import project.db.JDBiConnector;
import project.model.Order;
import project.model.ProductOrder;

import java.util.List;
import java.util.stream.Collectors;

public class ProductOrderService {
    public static void addProductToProductOrder(String ido, String idp, String quantity) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO productoder(ido,idp,quantity) " +
                                "VALUES (?,?,?)")
                        .bind(0, ido)
                        .bind(1, idp)
                        .bind(2, quantity)
                        .execute()
        );
    }

    public static List<ProductOrder> getProductOrder() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM productoder ")
                    .mapToBean(ProductOrder.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public static List<ProductOrder> getProductOrderByIdO(String ido) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM productoder where  ido=?")
                    .bind(0, ido)
                    .mapToBean(ProductOrder.class)
                    .stream().collect(Collectors.toList());
        });
    }
}
