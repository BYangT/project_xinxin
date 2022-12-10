package com.ytb.project_xinxin.dao;

import com.ytb.project_xinxin.entity.goods;
import com.ytb.project_xinxin.util.DBUtil;

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
public class shoesDao {
    public List<goods> findAll(){
        List<goods> goods = new ArrayList<goods>();
        Connection connection = DBUtil.getConnection();
        String sql = "select * from goods";
        PreparedStatement preparedStatement;
        {
            try {
                preparedStatement = connection.prepareStatement(sql);
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()){
                    goods c = new goods();

                    c.setName(rs.getString("name"));
                    c.setPrice(rs.getInt("price"));
                    c.setIdgoods(rs.getInt("idgoods"));
                    c.setPic(rs.getString("pic"));
                    goods.add(c);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return goods;
    }
    public goods fingByName(String name){
        Connection connection = DBUtil.getConnection();
        String sql = "select * from goods where name = ?";
        goods goods = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                goods = new goods();
                goods.setIdgoods(rs.getInt("idgoods"));
                goods.setName(rs.getString("name"));
                goods.setPic(rs.getString("pic"));
                goods.setPrice(rs.getInt("price"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return goods;
    }
}
