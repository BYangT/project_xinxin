package com.ytb.project_xinxin.entity;

import java.util.Objects;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class goods {
    public int idgoods;
    public String name;
    public String pic;
    public int price;

    public int getIdgoods() {
        return idgoods;
    }

    public void setIdgoods(int idgoods) {
        this.idgoods = idgoods;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
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
        goods goods = (goods) o;
        return idgoods == goods.idgoods && price == goods.price && name.equals(goods.name) && pic.equals(goods.pic);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idgoods, name, pic, price);
    }

    @Override
    public String toString() {
        return "goods{" +
                "idgoods=" + idgoods +
                ", name='" + name + '\'' +
                ", pic='" + pic + '\'' +
                ", price=" + price +
                '}';
    }
}
