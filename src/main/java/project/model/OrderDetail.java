package project.model;

public class OrderDetail {
    int idOrder;
    int quantity;
    int idPro;

    public OrderDetail(int idOrder, int quantity, int idro) {
        this.idOrder = idOrder;
        this.quantity = quantity;
        this.idPro = idro;
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

    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "idOrder=" + idOrder +
                ", quantity=" + quantity +
                ", idro=" + idPro +
                '}';
    }
}
