package model.reponsitory.impl;

import model.bean.Customer.Customer;
import model.reponsitory.CustomerReponsitory;

import java.util.List;

public class CustomerReponsitoryImpl  implements CustomerReponsitory {
    @Override
    public List<Customer> getList() {

        return null;
    }

    @Override
    public boolean createCustomer(Customer customer) {
        return false;
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) {
        return false;
    }

    @Override
    public Customer findById(int id) {
        return null;
    }
}
