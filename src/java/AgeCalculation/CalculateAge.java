/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AgeCalculation;

import java.time.LocalDate;
import java.time.Month;
import java.time.Period;

/**
 *
 * @author Porag
 */
public class CalculateAge {

    public CalculateAge() {
    }
    private static CalculateAge calculateAge;
    public static CalculateAge getInstance()
    {
        if(calculateAge==null)calculateAge=new CalculateAge();
        return calculateAge;
    }
    public String getAge(String birthdate)
    {
        //System.out.println(birthdate);
        String[] tmp=birthdate.split("-");
        //System.out.println(tmp.length);
        LocalDate l=LocalDate.of(Integer.parseInt(tmp[0]), Integer.parseInt(tmp[1]),Integer.parseInt(tmp[2]));
        LocalDate now=LocalDate.now();
        Period diff=Period.between(l, now);
        String age=diff.getYears()+"-"+diff.getMonths() + "-" + diff.getDays();
        return age;
    }
}
