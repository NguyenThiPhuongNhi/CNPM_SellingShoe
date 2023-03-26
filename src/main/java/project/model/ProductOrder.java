package project.model;


import java.io.Serializable;

public class ProductOrder implements Serializable {
    private  int idop,ido,idp,quantity;

    public ProductOrder() {
    }

    public ProductOrder(int idop, int ido, int idp, int quantity) {
        this.idop = idop;
        this.ido = ido;
        this.idp = idp;
        this.quantity = quantity;
    }

    public int getIdop() {
        return idop;
    }

    public void setIdop(int idop) {
        this.idop = idop;
    }

    public int getIdo() {
        return ido;
    }

    public void setIdo(int ido) {
        this.ido = ido;
    }

    public int getIdp() {
        return idp;
    }

    public void setIdp(int idp) {
        this.idp = idp;
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
                "idop=" + idop +
                ", ido=" + ido +
                ", idp=" + idp +
                ", quantity=" + quantity +
                '}';
    }
}

