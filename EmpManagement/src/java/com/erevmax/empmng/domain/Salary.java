package com.erevmax.empmng.domain;
public class Salary 
{
    private String empId;
    private double basic;
    private double tds;
    private double pf;
    private double bonus; 
    private double total;

    public Salary() {
    }

    public Salary(String empId, double basic) {
        this.empId = empId;
        this.basic = basic;
    }

    public Salary(String empId, double basic, double tds, double pf, double bonus, double total) {
        this.empId = empId;
        this.basic = basic;
        this.tds = tds;
        this.pf = pf;
        this.bonus = bonus;
        this.total = total;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public double getBasic() {
        return basic;
    }

    public void setBasic(double basic) {
        this.basic = basic;
    }

    public double getTds() {
        return tds;
    }

    public void setTds(double tds) {
        this.tds = tds;
    }

    public double getPf() {
        return pf;
    }

    public void setPf(double pf) {
        this.pf = pf;
    }

    public double getBonus() {
        return bonus;
    }

    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
    
}
