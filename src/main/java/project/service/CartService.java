package project.service;

import project.db.JDBiConnector;
import project.model.Cart;
import project.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class CartService {
    // thêm vào giỏ hàng, chèn sp vô
    public static void addProductToCart(String idProduct, String quantity, String idAccount) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO cart1(idProduct,quantity,idAccount) " +
                                "VALUES (?,?,?)")
                        .bind(0, idProduct).bind(1, quantity).bind(2, idAccount)
                        .execute()
        );
    }
    // lấy item của giỏ hàng theo id khách hàng
    public static List<Cart> getAllByIda(String idAccount) {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from cart1 where idAccount = ?")
                    .bind(0, idAccount)
                    .mapToBean(Cart.class)
                    .stream().collect(Collectors.toList());
        });
    }
    // lấy tất cả item trong cart
    public static List<Cart> getAll() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from cart1").mapToBean(Cart.class)
                    .stream().collect(Collectors.toList());
        });
    }
    // kiểm tra
    public static Cart checkProduct(String idp, String ida) {

        List<Cart> byCarts = JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from cart1 where idProduct = ? and idAccount = ?")
                    .bind(0, idp)
                    .bind(1, ida)
                    .mapToBean(Cart.class)
                    .stream().collect(Collectors.toList());
        });
        if (byCarts.size() == 0)
            return null;
        return byCarts.get(0);
    }
// cập nhật lại số lượng sp của item giỏ hàng

    public static void upQuantityProductByCart(String quantity, String idp, String ida) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update cart1 set quantity =? where idProduct = ? and idAccount = ?")
                        .bind(0, quantity)
                        .bind(1, idp)
                        .bind(2, ida)
                        .execute()
        );
    }
    public static void deleteProductByIdpAndIda(String idp, String ida) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from cart1 where idProduct = ? and idAccount = ?")
                        .bind(0, idp)
                        .bind(1, ida)
                        .execute()
        );
    }
    public static List<Cart> getAllItemCart(String idA) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from cart1 where idAccount=?")
                    .bind(0,idA)
                    .mapToBean(Cart.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        System.out.println(getAll());
    }
}
