package model.reponsitory;

import model.bean.MatBang.Matbang;

import java.util.List;

public interface MatBangRepository {
    List<Matbang> getList();
    boolean createCustomer(Matbang matbang);
    boolean deleteCustomer(int id);
    Matbang findById(int id);
}
