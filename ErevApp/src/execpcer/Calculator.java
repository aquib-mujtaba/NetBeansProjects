
package execpcer;

/**
 *
 * @author basavarajm
 */
class Calculator {

    static int divide(int i, int i0) throws AquibException{
if(((i%10)==0)&&((i0%5)==0)){
    return (i/10);
    }
else{
    throw  new AquibException();
    } 
}}
