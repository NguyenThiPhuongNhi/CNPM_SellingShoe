package project.model;

import java.io.Serializable;

public class Product implements Serializable {

    int idPro;
    String name;
    String img;
    int quantity;
    String status;
    String detailPro;

    long price;

    public Product() {
    }
    public Product(int id, String name, String img, int quantity, String status, String detailPro, long price) {
        this.idPro = id;
        this.name = name;
        this.img = img;
        this.quantity = quantity;
        this.status = status;
        this.detailPro = detailPro;
        this.price = price;
    }

    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDetailPro() {
        return detailPro;
    }


    public void setDetailPro(String detailPro) {
        this.detailPro = detailPro;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }


    @Override
    public String toString() {
        return "Product{" +
                "id=" + idPro +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", quantity=" + quantity +
                ", status='" + status + '\'' +
                ", detailPro='" + detailPro + '\'' +
                ", price=" + price +
                '}';
    }
}