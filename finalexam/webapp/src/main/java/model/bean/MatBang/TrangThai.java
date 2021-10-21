package model.bean.MatBang;

public class TrangThai {
    private int id;
    private  String name;

    public TrangThai(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public TrangThai() {
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
}

