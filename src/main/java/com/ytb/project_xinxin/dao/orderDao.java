package com.ytb.project_xinxin.dao;

import java.sql.Connection;

import com.ytb.project_xinxin.entity.order;
import com.ytb.project_xinxin.util.DBUtil;
import jdk.nashorn.internal.objects.annotations.Where;
import org.jetbrains.annotations.NotNull;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class orderDao {
    public List<order> findById(int id){

        List<order> orders = new ArrayList<order>();
        Connection connection = DBUtil.getConnection();

        String sql = "select * from gidentifity where id = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                order order = new order();
                order.setId(id);
                order.setNumber(rs.getInt("number"));
                order.setIdgoods(rs.getInt("idgoods"));
                order.setPrice(rs.getInt("price"));
                orders.add(order);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    public void add(@NotNull order order){
        Connection connection = DBUtil.getConnection();
        String sql = "insert into gidentifity (id,idgoods,number,price) values(?,?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, order.getId());
            preparedStatement.setInt(2, order.getIdgoods());
            preparedStatement.setInt(3, order.getNumber());
            preparedStatement.setInt(4, order.getPrice());

            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
