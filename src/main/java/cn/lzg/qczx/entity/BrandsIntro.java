package cn.lzg.qczx.entity;

import lombok.Data;

/**
 * <p>Title:BrandsIntro</p>
 * <p>Description:汽车主品牌信息</p>
 * @author Liuzeg
 * @date 2017-05-25
 * @version 1.0
 */
@Data
public class BrandsIntro {
    private int masterId;//主品牌ID

    private String masterName;//品牌名

    private String logoMeaning;//logo意义

    private String introduction;//介绍
}
