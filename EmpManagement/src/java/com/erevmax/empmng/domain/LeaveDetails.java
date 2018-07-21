package com.erevmax.empmng.domain;

public class LeaveDetails {
    private String empId;
    private String startDate;
    private String endDate;
    private String comment;
    private boolean approveStatus; 

    public LeaveDetails(String empId, String startDate, String endDate, String comment, boolean approveStatus) {
        this.empId = empId;
        this.startDate = startDate;
        this.endDate = endDate;
        this.comment = comment;
        this.approveStatus = approveStatus;
    }

    public LeaveDetails() {
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean isApproveStatus() {
        return approveStatus;
    }

    public void setApproveStatus(boolean approveStatus) {
        this.approveStatus = approveStatus;
    }
    
}
