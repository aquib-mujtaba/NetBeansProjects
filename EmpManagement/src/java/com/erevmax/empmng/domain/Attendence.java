package com.erevmax.empmng.domain;

public class Attendence {

    private String empId;
    private String inTime;
    private String outTime;
    private boolean attendenceStatus;

    public Attendence(String empId, String inTime, String outTime, boolean attendenceStatus) {
        this.empId = empId;
        this.inTime = inTime;
        this.outTime = outTime;
        this.attendenceStatus = attendenceStatus;
    }

    public Attendence() {
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getInTime() {
        return inTime;
    }

    public void setInTime(String inTime) {
        this.inTime = inTime;
    }

    public String getOutTime() {
        return outTime;
    }

    public void setOutTime(String outTime) {
        this.outTime = outTime;
    }

    public boolean isAttendenceStatus() {
        return attendenceStatus;
    }

    public void setAttendenceStatus(boolean attendenceStatus) {
        this.attendenceStatus = attendenceStatus;
    }

}
