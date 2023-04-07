package com.qst.util;


import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

public class BeanUtil {

     public static <T> T copy(Object poObj,final Class <T>voClass)
     {
         T voObj =null;
         try {
             voObj = voClass.newInstance();
             try {
				BeanUtils.copyProperties(voObj, poObj);
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
             return voObj;
         } catch (InstantiationException e) {
             e.printStackTrace();
         } catch (IllegalAccessException e) {
        	  e.printStackTrace();
         }
         return null;
     }
     public static <T> List <T> copyList(List <? extends Object> poList ,final Class <T>voClass){

        List<T> voList=new ArrayList<T>();

        T voObj =null;
        for(Object poObj:poList){
            try {
                voObj = voClass.newInstance();
                try {
					BeanUtils.copyProperties(voObj, poObj);
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                voList.add(voObj);
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
           	  e.printStackTrace();
            }
           
        }
        return voList;
    }
}

