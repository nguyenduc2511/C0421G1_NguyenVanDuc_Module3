package model;

public class Customer {
    private String fullName;
    private String dateOfBirth;
    private String address;
    private String img;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Customer() {
    }

    public Customer(String fullName, String dateOfBirth, String address, String img) {
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.img = img;
    }

    @Override
    public String toString() {
        return "customer{" +
                "fullName='" + fullName + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", address='" + address + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
