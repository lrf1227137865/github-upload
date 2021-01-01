package com.lrf.ssm.util;

import org.springframework.core.convert.converter.Converter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * ⾃定义⽇期转换器
 */
public class DateConverter implements Converter<String, Date> {
    @Override
    public Date convert(String s) {
        //实现将字符串转成⽇期类型(格式是yyyy-MM-dd)
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return dateFormat.parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null; //如果参数绑定失败返回null
    }
}