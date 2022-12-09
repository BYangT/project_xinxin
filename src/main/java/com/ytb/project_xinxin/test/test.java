package com.ytb.project_xinxin.test;

import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.dao.shopDao;
import com.ytb.project_xinxin.service.shopService;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class test {
    public static void main(String[] args) {

        shopDao dao = new shopDao();
        shopService service = new shopService();
        Idenitfity idenitfity = service.login("yang");
        System.out.println(idenitfity);
    }
}
