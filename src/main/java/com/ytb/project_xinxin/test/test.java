package com.ytb.project_xinxin.test;

import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.dao.shopDao;
import com.ytb.project_xinxin.entity.cart;
import com.ytb.project_xinxin.entity.goods;
import com.ytb.project_xinxin.entity.order;
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
        List<cart> carts1 = service.findAllCart();
        for (cart cart : carts1){
            shopService service1 = new shopService();
            System.out.println(cart.getName());
            goods goods = service1.findByName(cart.getName());
            System.out.println(goods.toString());
            int idgoods = goods.getIdgoods();
            Idenitfity idenitfity = service1.login("yang");
            int id = idenitfity.getId();
            order order = new order();
            order.setId(id);
            order.setIdgoods(idgoods);
            order.setNumber(cart.getNumber());
            order.setPrice(cart.getPrice());
            service1.add(order);
            service1.delete(cart);
        }


    }
}
