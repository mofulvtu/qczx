package cn.lzg.qczx.entity;

import lombok.Data;

/**
 * <p>Title:Serial</p>
 * <p>Description:汽车子品牌</p>
 * @author Liuzeg
 * @date 2017-05-25
 * @version 1.0
 */

@Data
public class Serial {
    private int serialId; //车型ID

    private String serialName;//车型名

    private String Picture;//图片

    private int uv;

    private int saleStatus;//是否在售

    private String dealerPrice;//经销商价格

}