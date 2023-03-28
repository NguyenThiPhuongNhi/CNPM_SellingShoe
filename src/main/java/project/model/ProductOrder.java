package project.model;


import java.io.Serializable;

public class ProductOrder implements Serializable {
    private  int idOrderProduct, idOrder, idProduct,quantity;

    public ProductOrder() {
    }

    public ProductOrder(int idOrderProduct, int idOrder, int idp, int quantity) {
        this.idOrderProduct = idOrderProduct;
        this.idOrder = idOrder;
        this.idProduct = idp;
        this.quantity = quantity;
    }

    public int getIdOrderProduct() {
        return idOrderProduct;
    }

    public void setIdOrderProduct(int idOrderProduct) {
        this.idOrderProduct = idOrderProduct;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
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

    @Override
    public String toString() {
        return "ProductOrder{" +
                "idop=" + idOrderProduct +
                ", ido=" + idOrder +
                ", idp=" + idProduct +
                ", quantity=" + quantity +
                '}';
    }
}

