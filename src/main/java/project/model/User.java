package project.model;

import java.io.Serializable;

public class User implements Serializable {
    int idUser;
    String userName;
    String fullName;
    String email;
    String user;
    String DOB;
    String password;
    int role;
    private int managerAccount, managerProduct, managerHome, managerBlog, assistant, managerOrder;
    String phone;
    String address;
    String blockUser;

    public User() {

    }

    @Override
    public String toString() {
        return "User{" +
                "idUser=" + idUser +
                ", userName='" + userName + '\'' +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", user='" + user + '\'' +
                ", DOB='" + DOB + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", managerAccount=" + managerAccount +
                ", managerProduct=" + managerProduct +
                ", managerHome=" + managerHome +
                ", managerBlog=" + managerBlog +
                ", assistant=" + assistant +
                ", managerOrder=" + managerOrder +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", blockUser='" + blockUser + '\'' +
                '}';
    }

    public User(int idUser, String userName, String fullName, String email, String user, String DOB, String password, int role, int managerAccount, int managerProduct, int managerHome, int managerBlog, int assistant, int managerOrder, String phone, String address, String blockUser) {
        this.idUser = idUser;
        this.userName = userName;
        this.fullName = fullName;
        this.email = email;
        this.user = user;
        this.DOB = DOB;
        this.password = password;
        this.role = role;
        this.managerAccount = managerAccount;
        this.managerProduct = managerProduct;
        this.managerHome = managerHome;
        this.managerBlog = managerBlog;
        this.assistant = assistant;
        this.managerOrder = managerOrder;
        this.phone = phone;
        this.address = address;
        this.blockUser = blockUser;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUser() {
        return userName;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getManagerAccount() {
        return managerAccount;
    }

    public void setManagerAccount(int managerAccount) {
        this.managerAccount = managerAccount;
    }

    public int getManagerProduct() {
        return managerProduct;
    }

    public void setManagerProduct(int managerProduct) {
        this.managerProduct = managerProduct;
    }

    public int getManagerHome() {
        return managerHome;
    }

    public void setManagerHome(int managerHome) {
        this.managerHome = managerHome;
    }

    public int getManagerBlog() {
        return managerBlog;
    }

    public void setManagerBlog(int managerBlog) {
        this.managerBlog = managerBlog;
    }

    public int getAssistant() {
        return assistant;
    }

    public void setAssistant(int assistant) {
        this.assistant = assistant;
    }

    public int getManagerOrder() {
        return managerOrder;
    }

    public void setManagerOrder(int managerOrder) {
        this.managerOrder = managerOrder;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBlockUser() {
        return blockUser;
    }

    public void setBlockUser(String blockUser) {
        this.blockUser = blockUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}