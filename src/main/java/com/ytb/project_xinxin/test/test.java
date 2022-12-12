package com.ytb.project_xinxin.test;

import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.dao.shopDao;
import com.ytb.project_xinxin.entity.cart;
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

        cart cartObj = new cart();
        cartObj.setNumber(10);
        cartObj.setName("yanghaha");
        cartObj.setPrice(2000);
        cartObj.setPic("12.jpg");

        service.addCart(cartObj);

        List<cart> carts = service.findAllCart();

        for (cart cart : carts){
            System.out.println(cart.toString());
        }


    }
}
