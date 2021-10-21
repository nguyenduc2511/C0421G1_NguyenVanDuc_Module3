package model.reponsitory;

import model.bean.Customer.CustomerType;

import java.util.List;

public interface CustomerTypeRepository {
    List<CustomerType> getList();
}
