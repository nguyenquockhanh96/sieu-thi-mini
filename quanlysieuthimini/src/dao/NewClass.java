/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import helper.DateHelper;
import java.lang.invoke.MethodHandles;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.ClassUtils;

/**
 *
 * @author Administrator
 */
public class NewClass {
    public static void main(String[] args) {
//        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
//        String NgayBan = DateHelper.toString(DateHelper.now(),"yyyy-MM-dd");
//        LocalDate now = LocalDate.now();
//        System.out.println(sdf.format(DateHelper.now()));
//        System.out.println(now.getMonthValue());
//        List<Integer> list = new ArrayList<>();
//        list.add(2);
//        list.add(3);
//        list.add(4);
//        list.remove(list.indexOf(3));
//        for(Integer i : list){
//            System.out.println(i);
//        }

        String a = "0";
        char x[] = a.toCharArray();
        String TrangThai = "";
        for(int i = 0; i < x.length; i++){
            if (i != x.length - 1)
                TrangThai += x[i] + ",";
            else
                TrangThai += x[i];
        }
        System.out.println(TrangThai);
        
    }
    
    public static void abc() {
        //String abc = NewClass.class.getResource("ui/chung/InHoaDon.jrxml");
        try {
            String abc = NewClass.class.getProtectionDomain().getCodeSource().getLocation().toURI().getPath();
            System.out.println(System.getProperty("user.dir"));
            System.out.println(abc);
        } catch (Exception e) {
        }
        
    }
}
