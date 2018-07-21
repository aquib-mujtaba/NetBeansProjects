package com.erevmax.empmng.domain;
public class MasterTable 
{
 
    private String empId;
    private int totalAttendence;
    private int noLeaves;

    public MasterTable(String empId, int totalAttendence, int noLeaves) 
    {
        this.empId = empId;
        this.totalAttendence = totalAttendence;
        this.noLeaves = noLeaves;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public int getTotalAttendence() {
        return totalAttendence;
    }

    public void setTotalAttendence(int totalAttendence) {
        this.totalAttendence = totalAttendence;
    }

    public int getNoLeaves() {
        return noLeaves;
    }

    public void setNoLeaves(int noLeaves) {
        this.noLeaves = noLeaves;
    }
    
    
}
