package project.model;

public class Feedback {
    int idFB;
    String cmt;
    int idUser;
    int idPro;

    public Feedback(int idFB, String cmt, int idUser, int idPro) {
        this.idFB = idFB;
        this.cmt = cmt;
        this.idUser = idUser;
        this.idPro = idPro;
    }

    public int getIdFB() {
        return idFB;
    }

    public void setIdFB(int idFB) {
        this.idFB = idFB;
    }

    public String getCmt() {
        return cmt;
    }

    public void setCmt(String cmt) {
        this.cmt = cmt;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdPro() {
        return idPro;
    }

    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "idFB=" + idFB +
                ", cmt='" + cmt + '\'' +
                ", idUser=" + idUser +
                ", idPro=" + idPro +
                '}';
    }
}
