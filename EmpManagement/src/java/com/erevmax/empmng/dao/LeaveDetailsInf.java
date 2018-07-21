package com.erevmax.empmng.dao;

import com.erevmax.empmng.domain.LeaveDetails;
import java.util.List;

public interface LeaveDetailsInf {
    
 public void save(LeaveDetails a);
 public List<LeaveDetails> findAll();
 public LeaveDetails findById(String empId);
 public List<LeaveDetails>  findProperty(String propertyName,Object objValue);
 public int delete(LeaveDetails a);
 public boolean deleteById(String empId);  
}
