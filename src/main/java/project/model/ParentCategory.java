package project.model;

import java.io.Serializable;

public class ParentCategory implements Serializable {
    int idPar;
    String name;

    public ParentCategory(int idPar, String name) {
        this.idPar = idPar;
        this.name = name;
    }

    public int getIdPar() {
        return idPar;
    }

    public void setIdPar(int idPar) {
        this.idPar = idPar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "ParentCategory{" +
                "idPar=" + idPar +
                ", name='" + name + '\'' +
                '}';
    }
}
