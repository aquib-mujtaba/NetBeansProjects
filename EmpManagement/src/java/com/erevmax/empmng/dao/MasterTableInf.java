package com.erevmax.empmng.dao;

import com.erevmax.empmng.domain.MasterTable;
import java.util.List;

public interface MasterTableInf 
{
  
    
 public void save(MasterTable a);
 public List<MasterTable> findAll();
 public MasterTable findById(String empId);
 public List<MasterTable>  findProperty(String propertyName,Object objValue);
 public int delete(MasterTable a);
 public boolean deleteById(String empId);  
    
    
}
