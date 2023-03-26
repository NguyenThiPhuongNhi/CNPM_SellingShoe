package project.model;

import java.io.Serializable;

public class Cart implements Serializable {
    int idCart;
    int idProduct;
    int quantity;
    int idAccount;

    public Cart() {

    }

    public Cart(int idCart, int idProduct, int quantity, int idAccount) {
        this.idCart = idCart;
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.idAccount = idAccount;
    }

    public int getIdCart() {
        return idCart;
    }

    public void setIdCart(int idCart) {
        this.idCart = idCart;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "idCart=" + idCart +
                ", idProduct=" + idProduct +
                ", quantity=" + quantity +
                ", idAccount=" + idAccount +
                '}';
    }
}
