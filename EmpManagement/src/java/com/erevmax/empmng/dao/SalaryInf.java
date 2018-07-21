package com.erevmax.empmng.dao;

import com.erevmax.empmng.domain.Salary;
import java.util.List;

public interface SalaryInf 
{
    
 public void save(Salary a);
 public List<Salary> findAll();
 public Salary findById(String empId);
 public List<Salary>  findProperty(String propertyName,Object objValue);
 public int delete(Salary a);
 public boolean deleteById(String empId);  
    
}
