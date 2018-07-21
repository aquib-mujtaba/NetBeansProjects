
package tempack;

/**
 *
 * @author basavarajm
 */
public class TempCon {
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

    public void setConfac(String rstemp) {
        this.confac = rstemp;
    }
    
}
