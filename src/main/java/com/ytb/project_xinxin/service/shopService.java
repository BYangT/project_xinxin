package com.ytb.project_xinxin.service;

import com.ytb.project_xinxin.dao.cartDao;
import com.ytb.project_xinxin.dao.orderDao;
import com.ytb.project_xinxin.dao.shoesDao;
import com.ytb.project_xinxin.entity.*;
import com.ytb.project_xinxin.dao.shopDao;

import java.util.List;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class shopService {
    shopDao dao = new shopDao();
    shoesDao dao2 = new shoesDao();
    cartDao dao3 = new cartDao();
    orderDao dao4 = new orderDao();
    public void add(Idenitfity idenitfity){
        dao.add(idenitfity);
    }

    public List<Idenitfity> findAll(){
        return dao.findAll();
    }

    public Idenitfity login(String user){
        return dao.findByUser(user);
    }

    public List<goods> findAllGoods(){
        return dao2.findAll();
    }

    public goods findByName(String name){
        return dao2.findByName(name);
    }

    public goods findByIdGoods(int id){
        return dao2.findById(id);
    }

    public Idenitfity findByIdIdenitfity(int id){
        return dao.findById(id);
    }

    public void addCart(cart cartObj){
        dao3.add(cartObj);
    }

    public void delete(cart cartObj){
        dao3.delete(cartObj);
    }

    public List<cart> findAllCart(){
        return dao3.findAll();
    }

    public List<order> findByIdOrder(int id){
        return dao4.findById(id);
    }
    public void add(order order){
        dao4.add(order);
    }

    public void delete(int id){
        dao.delete(id);
    }

    public void update(Idenitfity idenitfity){
        dao.update(idenitfity);
    }

    public int findRows() {
        return dao.findRows();
    }

    public List<Idenitfity> findByPage(page page){
        return dao.findByPge(page);
    }
    public boolean findByUser1(String user){
        return dao.findByUser1(user);
    }
}
