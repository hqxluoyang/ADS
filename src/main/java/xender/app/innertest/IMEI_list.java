package xender.app.innertest;


import org.nutz.dao.entity.Record;
import org.nutz.lang.Lang;
import xender.app.access.DbKit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class IMEI_list {


    public static List<Record> list = new ArrayList<Record>();

    public static List<Record> list() {
        if (Lang.isEmpty(list)) {
            list = DbKit.getDao().query("imei", null);
        }
        return list;
    }

    /**
     * 增加，删除的时候，reset一下
     */
    public static void resetList() {
        list = DbKit.getDao().query("imei", null);
    }



}
