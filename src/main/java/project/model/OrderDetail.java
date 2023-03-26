package project.model;

public class OrderDetail {
    int idOrder;
    int quantity;
    int idro;

    public OrderDetail(int idOrder, int quantity, int idro) {
        this.idOrder = idOrder;
        this.quantity = quantity;
        this.idro = idro;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdro() {
        return idro;
    }

    public void setIdro(int idro) {
        this.idro = idro;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "idOrder=" + idOrder +
                ", quantity=" + quantity +
                ", idro=" + idro +
                '}';
    }
}
