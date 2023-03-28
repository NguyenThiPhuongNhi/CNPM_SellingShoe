package project.service;

import project.db.JDBiConnector;
import project.model.Order;
import project.model.User;
//import project.model.Payment;

import java.util.List;
import java.util.stream.Collectors;

public class OrderService {
    public static void insertOrderByIdAcc(String lastName, String firstName, String phone, String email
            , String address,  String idAcc) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO orders (firstname, lastname, phone,email,address,idacc, status)" +
                                "VALUES (?,?,?,?,?,?,1)")
                        .bind(0, firstName)
                        .bind(1, lastName)
                        .bind(2, email)
                        .bind(3, phone)
                        .bind(4, address)
                        .bind(5, idAcc)
                        .execute()
        );

    }
    public static List<Order> getListOrderByIdAcc(String idAcc) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM order  where idUser = ?")
                    .bind(0,idAcc)
                    .mapToBean(Order.class)
                    .stream().collect(Collectors.toList());
        });
    }
//    public static List<Payment> getAllPayment() {
//        return JDBiConnector.me().withHandle(handle -> {
//            return handle.createQuery("select * from pay ")
//
//                    .mapToBean(Payment.class)
//                    .stream().collect(Collectors.toList());
//        });
//    }
//    public static Payment getPaymentByIdPm(String idPm) {
//        return JDBiConnector.me().withHandle(handle -> {
//            return handle.createQuery("select * from pay  where idPm = ?")
//                    .bind(0,idPm)
//                    .mapToBean(Payment.class)
//                    .stream().collect(Collectors.toList()).get(0);
//        });
//    }
    public static void deleteProductByIdCart(String idac) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from cart1 where idAccount = ?")
                        .bind(0, idac)
                        .execute()
        );
    }
    public static List<Order> getAllOrder() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM product")
                    .mapToBean(Order.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public static List<Order> getAllOrderById(String idU) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM order where idUser=? ")
                    .bind(0, idU)
                    .mapToBean(Order.class)
                    .stream().collect(Collectors.toList());
        });
    }
    // lấy tất cả các ttangj thái
    public static void editStatus(String status,String idOrder) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update order set status= ? where idOrder =?")
                        .bind(0, status)
                        .bind(1, idOrder)
                        .execute()
        );
    }
    public static Order viewUserOrder(String idOrder){
        List<Order> orders = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM order WHERE idOrder = ? ")
                        .bind(0, idOrder)
                        .mapToBean(Order.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (orders.size() == 0) return null;
        return orders.get(0);
    }


    public static void main(String[] args) {
        System.out.println(getAllOrder());
    }
}
