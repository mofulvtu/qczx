package cn.lzg.qczx.entity;

/**
 * Created by 刘增刚 on 2017/5/24.
 */

public enum Initial {

    A("A"),B("B"),C("C");


    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    Initial(String name) {
        this.name = name;
    }
}
