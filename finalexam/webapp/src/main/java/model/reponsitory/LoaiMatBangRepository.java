package model.reponsitory;

import model.bean.MatBang.LoaiMatbang;

import java.util.List;

public interface LoaiMatBangRepository {
    List<LoaiMatbang> getList();
}
