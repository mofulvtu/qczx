package cn.lzg.qczx.entity;

import lombok.Data;

/**
 * <p>Title:CarStyle</p>
 * <p>Description:车款属性</p>
 * @author Liuzeg
 * @date 2017-05-26
 * @version 1.0
 */
@Data
public class CarStyle {
    private String CarId; //汽车ID

    private String Name;//款式名

    private String Year;//生产年月

    private String ReferPrice;//参考价

    private String MinPrice;//最低价

    private String Trans;//挡位

    private boolean IsSupport;

    private String MallPrice;

    private String CarImg;

    private String SaleState;//是否在售

    private int SupportType;//

    private String ImportType;

    private String CarLink;

    private int CarPV;

    private boolean IsTax;

    private String TaxRelief;
}
