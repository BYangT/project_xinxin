package com.ytb.project_xinxin.dao;


import com.sun.org.apache.xerces.internal.impl.dv.DVFactoryException;
import com.ytb.project_xinxin.entity.Idenitfity;
import com.ytb.project_xinxin.entity.page;
import com.ytb.project_xinxin.util.DBUtil;
import org.jetbrains.annotations.NotNull;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class shopDao {
    public List<Idenitfity> findAll(){
        //存入所有数据最后返回
        List<Idenitfity>emps = new ArrayList<Idenitfity>();

        Connection connection = DBUtil.getConnection();
        String sql = "select * from identifity";
        try {
            //执行数据库语句
            PreparedStatement prep = connection.prepareStatement(sql);
            //获得查询数据后的结果集
            ResultSet rs = prep.executeQuery();
            while (rs.next()){
                //将Idenitfity对象存入集合中
                Idenitfity idenitfity = new Idenitfity();
                idenitfity.setId(rs.getInt("id"));
                idenitfity.setUser(rs.getString("user"));
                idenitfity.setEmail(rs.getString("email"));
                idenitfity.setPwd(rs.getString("pwd"));

                emps.add(idenitfity);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return emps;
    }

    public void add(Idenitfity idenitfity){
        Connection connection = DBUtil.getConnection();
        String sql = "insert into identifity (user,email,pwd)values(?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, idenitfity.getUser());
            preparedStatement.setString(2, idenitfity.getEmail());
            preparedStatement.setString(3, idenitfity.getPwd());

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public Idenitfity findByUser(String user){
        Idenitfity idenitfity = null;
        //数据库连接
        Connection connection = DBUtil.getConnection();

        String sql = "select * from identifity where user=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,user);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                idenitfity =new Idenitfity();
                idenitfity.setId(rs.getInt("id"));
                idenitfity.setUser(rs.getString("user"));
                idenitfity.setEmail(rs.getString("email"));
                idenitfity.setPwd(rs.getString("pwd"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return idenitfity;
    }

    public Idenitfity findById(int id){
        Idenitfity idenitfity = null;
        //数据库连接
        Connection connection = DBUtil.getConnection();

        String sql = "select * from identifity where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                idenitfity =new Idenitfity();
                idenitfity.setId(rs.getInt("id"));
                idenitfity.setUser(rs.getString("user"));
                idenitfity.setEmail(rs.getString("email"));
                idenitfity.setPwd(rs.getString("pwd"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return idenitfity;
    }

    public void delete(int id){

        Connection con = DBUtil.getConnection();

        String sql = "delete from identifity where id =?";

        try {
            //连接数据库
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            //填入id
            preparedStatement.setInt(1,id);
            //执行完毕
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(@NotNull Idenitfity idenitfity){
        Connection connection = DBUtil.getConnection();

        String sql = "update identifity set user=?,email=?,pwd=? where id=?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, idenitfity.getUser());
            preparedStatement.setString(2, idenitfity.getEmail());
            preparedStatement.setString(3, idenitfity.getPwd());
            preparedStatement.setInt(4, idenitfity.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public int findRows(){
        int count = 0;
        Connection connection = DBUtil.getConnection();
        String sql = "select count(*) c from identifity";
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                count = rs.getInt("c");
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return count;
    }

    public List<Idenitfity> findByPge(@NotNull page page){
        List<Idenitfity> idenitfities = new ArrayList<Idenitfity>();

        Connection connection = DBUtil.getConnection();

        String sql = "select * from identifity limit ?,?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, page.getBegin());
            preparedStatement.setInt(2, page.getPageSize());
            ResultSet rs=preparedStatement.executeQuery();

            while (rs.next()){
                Idenitfity idenitfity = new Idenitfity();
                idenitfity.setId(rs.getInt("id"));
                idenitfity.setUser(rs.getString("user"));
                idenitfity.setPwd(rs.getString("pwd"));
                idenitfity.setEmail(rs.getString("email"));
                idenitfities.add(idenitfity);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return idenitfities;
    }
}
