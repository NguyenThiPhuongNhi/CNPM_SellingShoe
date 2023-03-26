package project.model;

public class OrderPro {
    int inOrder;
    String date;
    int status;
    int idUser;

    public OrderPro(int inOrder, String date, int status, int idUser) {
        this.inOrder = inOrder;
        this.date = date;
        this.status = status;
        this.idUser = idUser;
    }

    public int getInOrder() {
        return inOrder;
    }

    public void setInOrder(int inOrder) {
        this.inOrder = inOrder;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    @Override
    public String toString() {
        return "OrderPro{" +
                "inOrder=" + inOrder +
                ", date='" + date + '\'' +
                ", status=" + status +
                ", idUser=" + idUser +
                '}';
    }
}
