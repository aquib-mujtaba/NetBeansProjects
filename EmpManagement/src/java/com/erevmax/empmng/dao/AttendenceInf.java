package com.erevmax.empmng.dao;

import com.erevmax.empmng.domain.Attendence;
import java.util.List;

public interface AttendenceInf {
    
 public void save(Attendence a);
 public List<Attendence> findAll();
 public Attendence findById(String empId);
 public List<Attendence>  findProperty(String propertyName,Object objValue);
 public int delete(Attendence a);
 public boolean deleteById(String empId);
    
}
