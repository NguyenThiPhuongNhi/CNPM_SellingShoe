package project.service;


import project.db.JDBiConnector;
import project.model.Category;
import project.model.CategoryItem;
import project.model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    // lấy tất cả sp mới
    public static List<Product> getAllProduct() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getProductByName(String name) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE name LIKE ? ")
                        .bind(0, "%" + name + "%")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }
    //    lấy sản phẩm mới

    // lấy 8 sp hiển thị home
    public static List<Product> get8Product() {
//        xử DB ...
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product LIMIT 8 ")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public static List<Product> get8ProductNew() {
//        xử DB ...
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product where status = 1 LIMIT 8 ")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }
    // lấy các danh mục menu
    public static List<Category> getListCategories() {
//        xử DB ...
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from category").mapToBean(Category.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //lấy tất cả các loại của danh mục menu
    public static List<CategoryItem> getListC() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from categoryitem").mapToBean(CategoryItem.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //    lấy danh sách sản phẩm theo cat
    public static List<Product> getListCById(String cid) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product where idCatItem = ?")
                    .bind(0, cid)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }
    public static List<CategoryItem> getListCIByIdCat(String cid) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from categoryitem where idCat = ?")
                    .bind(0, cid)
                    .mapToBean(CategoryItem.class)
                    .stream().collect(Collectors.toList());
        });
    }
    //    lấy ra từng cat theo id
    public static Category getNameC(int cid) {
        for (Category c : getListCategories()) {
            if (cid == (c.getIdCat())) {
                return c;
            }

        }
        return null;
    }

    //    lấy ra danh sách sản phẩm theo phân loại trong cat theo id của phân loại
    public static List<Product> getListItemCatById(String idI) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product  where idCatItem = ?")
                    .bind(0, idI)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    //  lấy phân loại trong menu để lấy tên của phân loại đó để hiển thị lên đường dẫn
    public static CategoryItem getItemName(int idI) {
        for (CategoryItem ci : getListC()) {
            if (idI == ci.getId()) {
                return ci;
            }

        }
        return null;
    }

    //phân trang
//    public static List<Product> getListProductByPage(List<Product> arr, int start, int end) {
//        List<Product> list = new ArrayList<Product>();
//        for (int i = start; i < end; i++) {
//            list.add(arr.get(i));
//        }
//        return list;
//    }


    public static Product getProductById(String id) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product  where idPro = ?")
                    .bind(0, id)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()).get(0);
        });
    }

    public static List<Product> getProductByPrice(String price1, String price2) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product  where price > ? and price<?")
                    .bind(0, price1)
                    .bind(1, price2)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getListProductByName(String name) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product WHERE name LIKE ?")
                    .bind(0, "%" + name + "%")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void editProductById(String name, String price,String status,
                                       String detailPro, String quantity, String idPro,String idCatItem,String img) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update product set name =?," +
                                "price = ?,detailPro =?, quantity =? , img=?, idCatItem=?,status=? where idPro = ?")
                        .bind(0, name)
                        .bind(1, price)
                        .bind(2, detailPro)
                        .bind(3, quantity)
                        .bind(4, img)
                        .bind(5,idCatItem)
                        .bind(6, status)
                        .bind(7, idPro)

                        .execute()
        );
    }
    // hiện thị thêm 8 sp thi chọn sem thêm
    public static List<Product> getNextTop8Product(int amount) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product LIMIT ?,8")
                    .bind(0, amount)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void addProductAdmin(String name, String img, String price, String promotion, String isNew, String introduce, String idC, String quatity) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO product(name,img, price,isPromo, isNew,information,ciditem,inventory) " +
                                "VALUES (?,?,?,?,?,?,?,?)")
                        .bind(0, name)
                        .bind(1, img)
                        .bind(2, price)
                        .bind(3, promotion)
                        .bind(4, isNew)
                        .bind(5, introduce)
                        .bind(6, idC)
                        .bind(7, quatity)
                        .execute()
        );

    }

    //XÓA SẢN PHẨM
    public static void deleteProduct(String idP) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete   from product where id= ?")
                        .bind(0, idP)
                        .execute()
        );
    }
    public static List<Product> getList() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select idPro from product p ")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        getListCategories();
    }

}