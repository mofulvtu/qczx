package cn.lzg.qczx.entity;

import lombok.Data;

/**
 * <p>Title:Brands</p>
 * <p>Description:汽车主品牌</p>
 * @author Liuzeg
 * @date 2017-05-23
 * @version 1.0
 */
@Data
public class Brands {
    private int masterId;//主品牌ID

    private String name;//品牌名

    private String logoUrl;//logo图标

    private String initial;//首字母

    private int uv;//

    private int saleStatus;//是否在售


}
