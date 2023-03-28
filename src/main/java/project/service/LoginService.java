package project.service;


import project.db.JDBiConnector;
import project.model.User;

import java.util.List;
import java.util.stream.Collectors;

public class LoginService {
    public static User getAccount(String user, String password) {
        List<User> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE userName = ? and password =?")
                        .bind(0, user).bind(1, password)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }
    // lấy tài khoản bằng id
    public static User getAccoutById(String idUser) {
        List<User> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE idUser = ? ")
                        .bind(0, idUser)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }


    // kiểm tra tài khoản
    public static User checkAccount(String email) {
        List<User> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE email = ?")
                        .bind(0, email)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }

    //
    public static void signUpA(String userName,String fullName, String email, String DOB, String pass) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into user (userName,fullname,email, DOB, password,managerAccount,managerProduct,managerBog,managerHome,assistant,manageOrder)" +
                                "VALUES (?,?,?,?,?,0,0,0,0,0,0)")
                        .bind(0, userName)
                        .bind(1, fullName)
                        .bind(2, email)
                        .bind(3, DOB)
                        .bind(4, pass)
                        .execute()
        );
    }

    public static void main(String[] args) {
        System.out.println(getAccoutById("1"));
//        signUpA("truc", "1");

//        System.out.println(getAccout("chi@gmail.com","3333"));
    }


}
