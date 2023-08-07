package com.atguigu.utils;

import com.atguigu.pojo.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class WebUtils {
    public static <T> T copyParamToBean(Map map, T bean){
        try {

            BeanUtils.populate(bean,map);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
        return bean;
    }
    public static int parseInt(String strInt,int defultValue){

        try {
            if(null != strInt && "" !=strInt)
                return Integer.parseInt(strInt);
        } catch (NumberFormatException e) {
            throw new RuntimeException(e);

        }
        return defultValue;
    }

}
