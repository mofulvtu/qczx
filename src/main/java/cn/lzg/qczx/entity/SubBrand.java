package cn.lzg.qczx.entity;

import lombok.Data;

import java.util.List;

/**
 * Created by 刘增刚 on 2017/5/25.
 */

@Data
public class SubBrand {
    private int brandId;//子品牌ID

    private String brandName;//子品牌名

    private boolean foreign;//是否国外品牌

    private List<Serial> serialList ;//车型列表
}
