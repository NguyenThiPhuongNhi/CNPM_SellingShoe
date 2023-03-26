package project.model;

public class CategoryItem {
    int id;
    String name;
    int idCat;

    public CategoryItem() {
    }

    public CategoryItem(int id, String name, int idCat) {
        this.id = id;
        this.name = name;
        this.idCat = idCat;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdCat() {
        return idCat;
    }

    public void setIdCat(int idCat) {
        this.idCat = idCat;
    }

    @Override
    public String toString() {
        return "CategoryItem{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", idCat=" + idCat +
                '}';
    }
}
