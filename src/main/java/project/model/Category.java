package project.model;

import java.io.Serializable;

public class Category implements Serializable {
    int idCat;
    String catName;

    public Category() {

    }
    public Category(int idCat, String catName) {
        this.idCat = idCat;
        this.catName = catName;

    }

    public int getIdCat() {
        return idCat;
    }

    public void setIdCat(int idCat) {
        this.idCat = idCat;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }


    @Override
    public String toString() {
        return "Category{" +
                "idCat=" + idCat +
                ", name='" + catName + '\'' +
                '}';
    }
}
