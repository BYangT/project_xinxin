package com.ytb.project_xinxin.entity;

import java.util.Objects;

/**
 * @author 杨天宝
 * @version 1.0
 */
public class cart {
    private String name;
    private int price;
    private String pic;
    private int number;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        cart cart = (cart) o;
        return price == cart.price && number == cart.number && name.equals(cart.name) && pic.equals(cart.pic);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, price, pic, number);
    }

    @Override
    public String toString() {
        return "cart{" +
                "name='" + name + '\'' +
                ", price=" + price +
                ", pic='" + pic + '\'' +
                ", number=" + number +
                '}';
    }
}
