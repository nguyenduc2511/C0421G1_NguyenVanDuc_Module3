package model.service.imp;

import model.bean.Customer.CustomerType;
import model.reponsitory.CustomerTypeRepository;
import model.reponsitory.impl.CustomerTypeRepositoryImp;
import model.service.CustomerTypeService;

import java.util.List;

public class CustomerTypeServiceImp implements CustomerTypeService {
    private CustomerTypeRepository customerTypeRepository = new CustomerTypeRepositoryImp();
    @Override
    public List<CustomerType> getList() {
        return this.customerTypeRepository.getList();
    }
}
