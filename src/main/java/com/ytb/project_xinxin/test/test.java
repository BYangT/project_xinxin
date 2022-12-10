package com.ytb.project_xinxin.test;

import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.dao.shopDao;
import com.ytb.project_xinxin.entity.goods;
import com.ytb.project_xinxin.service.shopService;

import javax.sound.midi.Soundbank;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class test {
    public static void main(String[] args) {

        shopService service = new shopService();
        goods goods = service.findByName("Aj1糖果果冻");
        System.out.println(goods.toString());
    }
}
