package com.ytb.project_xinxin.dao;

import com.ytb.project_xinxin.entity.cart;
import com.ytb.project_xinxin.entity.goods;
import com.ytb.project_xinxin.util.DBUtil;
import org.jetbrains.annotations.NotNull;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class cartDao {
    public  List<cart> findAll(){

        List<cart> carts = new ArrayList<cart>();
        Connection connection = DBUtil.getConnection();
        String sql = "select * from cart";
        PreparedStatement preparedStatement;
        {
            try {
                preparedStatement = connection.prepareStatement(sql);
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()){
                    cart c = new cart();

                    c.setName(rs.getString("name"));
                    c.setPrice(rs.getInt("price"));
                    c.setPic(rs.getString("pic"));
                    c.setNumber(rs.getInt("number"));
                    carts.add(c);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
        }
    }
        return carts;
    }
    public void add(@NotNull cart cartObj){
        Connection connection = DBUtil.getConnection();
        String sql = "insert into cart (name,price,pic,number)values(?,?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,cartObj.getName());
            preparedStatement.setInt(2,cartObj.getPrice());
            preparedStatement.setString(3,cartObj.getPic());
            preparedStatement.setInt(4,cartObj.getNumber());

            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void delete(@NotNull cart cartObj){
        Connection connection = DBUtil.getConnection();

        String sql = "delete from cart where name = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,cartObj.getName());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
