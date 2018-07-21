/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beanpack;

/**
 *
 * @author basavarajm
 */
public class TempConBean {
   private String temp,confac;

    public String getTemp() {
        if (confac.equals("c2f")) {
            temp=String.valueOf(1.8*Float.parseFloat(temp)+32.0);
        }
        if (confac.equals("f2c")) {
            temp=String.valueOf((Float.parseFloat(temp)-32.0)/1.8);
        }
        return temp;
    }

    public void setTemp(String temp) {
        this.temp = temp;
    }

    public String getConfac() {
        return confac;
    }

    public void setConfac(String confac) {
        this.confac = confac;
    }
}
