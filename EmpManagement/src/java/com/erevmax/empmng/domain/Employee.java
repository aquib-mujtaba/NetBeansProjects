package com.erevmax.empmng.domain;

import javax.servlet.http.Part;

public class Employee 
{
    private String empId;
    private String name;
    private int age;
    private String userName;
    private String deptId;
    private int attendence;
    private int leavs;
    private String phone;

    public Employee(String empId, String name, int age, String userName, String deptId, String phone) {
        this.empId = empId;
        this.name = name;
        this.age = age;
        this.userName = userName;
        this.deptId = deptId;
        this.phone = phone;
        
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }



    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public Employee() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

 

  

    public int getAttendence() {
        return attendence;
    }

    public void setAttendence(int attendence) {
        this.attendence = attendence;
    }

    public int getLeavs() {
        return leavs;
    }

    public void setLeavs(int leavs) {
        this.leavs = leavs;
    }
    
    
    
}
