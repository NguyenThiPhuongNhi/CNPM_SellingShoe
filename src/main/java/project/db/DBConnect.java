package project.db;

import java.sql.*;

public class DBConnect {
    String url = "jdbc:mysql://localhost:3306/shop";
    String user = "root";
    String pass = "";
    Connection conn;

    static DBConnect install;

    private DBConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(this.url, this.user, this.pass);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static DBConnect getInstall() {
        if (install == null) install = new DBConnect();
        return install;
    }

    public Statement get() {
        if (conn == null) return null;
        try {
            return conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        } catch (SQLException e) {
            return null;
        }
    }

    public static void main(String[] args) {
        Statement statement = DBConnect.getInstall().get();
        if (statement != null)
            try {
                ResultSet rs = statement.executeQuery("select * from product");
                rs.last();
                System.out.println(rs.getRow());
                rs.beforeFirst();
                while (rs.next()){
                    System.out.println(rs.getString(1)+ " -- "+ rs.getString(2));
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        else{
            System.out.println("Không có kết nối");
        }
    }
}
