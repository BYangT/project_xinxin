package com.ytb.project_xinxin.entity;

import java.util.Objects;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class order {
    int id;
    int idgoods;
    int number;
    int price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdgoods() {
        return idgoods;
    }

    public void setIdgoods(int idgoods) {
        this.idgoods = idgoods;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        order order = (order) o;
        return id == order.id && idgoods == order.idgoods && number == order.number && price == order.price;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, idgoods, number, price);
    }

    @Override
    public String toString() {
        return "order{" +
                "id=" + id +
                ", idgoods=" + idgoods +
                ", number=" + number +
                ", price='" + price + '\'' +
                '}';
    }
}
