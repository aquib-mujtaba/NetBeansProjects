package com.erevmax.empmng.dao;

import com.erevmax.empmng.domain.Attendence;
import com.erevmax.empmng.domain.Employee;
import java.util.List;

public interface EmployeeInf 
{
    
 public void save(Employee a);
 public List<Employee> findAll();
 public Employee findById(String empId);
 public List<Employee>  findProperty(String propertyName,Object objValue);
 public int delete(Employee a);
 public boolean deleteById(String empId);     
    
}
