package cn.lzg.qczx.entity;

import lombok.Data;

import java.util.List;

/**
 * <p>Title:CarGroup</p>
 * <p>Description:汽车参数类型</p>
 * @author Liuzeg
 * @date 2017-05-25
 * @version 1.0
 */
@Data
public class CarGroup {
    private String Name;

    private List<CarStyle> CarList ;
}
