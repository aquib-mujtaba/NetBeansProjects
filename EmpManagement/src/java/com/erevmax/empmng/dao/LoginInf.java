package com.erevmax.empmng.dao;

import com.erevmax.empmng.domain.Login;
import java.util.List;

public interface LoginInf 
{
    
 public void save(Login a);
 public List<Login> findAll();
 public Login findById(String userName);
 public List<Login>  findProperty(String propertyName,Object objValue);
 public int delete(Login a);
 public boolean deleteById(String userName);  
    
}
