package model.service.imp;

import model.bean.Employee.Employee;
import model.reponsitory.EmployeeRepository;
import model.reponsitory.impl.EmployeeRepositoryImp;
import model.service.EmployeeService;

import java.util.List;

public class EmployeeServiceImp implements EmployeeService {
    private EmployeeRepository employeeRepository = new EmployeeRepositoryImp();
    @Override
    public List<Employee> getList() {
        return this.employeeRepository.getList();
    }

    @Override
    public boolean createEmployee(Employee employee) {
        return this.employeeRepository.createEmployee(employee);
    }

    @Override
    public boolean editEmployee(Employee employee) {
        return this.employeeRepository.editEmployee(employee);
    }

    @Override
    public boolean deleteEmployee(int id) {
        return this.employeeRepository.deleteEmployee(id);
    }

    @Override
    public Employee findById(int id) {
        return this.employeeRepository.findById(id);
    }
}
