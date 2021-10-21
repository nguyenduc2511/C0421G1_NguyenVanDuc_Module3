package model.service;

import model.bean.MatBang.Matbang;

import java.util.List;

public interface MatBangService {
    List<Matbang> getList();
    boolean createCustomer(Matbang matbang);
    boolean deleteCustomer(int id);
    Matbang findById(int id);
}
