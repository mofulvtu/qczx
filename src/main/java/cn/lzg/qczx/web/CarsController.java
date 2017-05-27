package cn.lzg.qczx.web;

import cn.lzg.qczx.entity.*;
import com.alibaba.fastjson.JSON;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

/**
 * Created by 刘增刚 on 2017/5/24.
 */

@Controller
@RequestMapping("/cars")
public class CarsController {

    /**
     * 获取汽车品牌
     * @param tag
     * @param model
     * @return
     */
    @RequestMapping(value = "/list/{tag}")
    public String getCarList(@PathVariable("tag") int tag, Model model) {
        String url = "http://cheyouapi.ycapp.yiche.com/car/getmasterbrandlist";
        String json = loadJSON(url);

        JSONObject jsonObject = JSONObject.fromObject(json);
        String jsonStr = jsonObject.getString("data");
        System.out.println(jsonStr);
        List<Brands> brands = JSON.parseArray(jsonStr, Brands.class);
        System.out.println(brands);
        model.addAttribute("brandsList", brands);
        model.addAttribute("tag",tag);

        return "brandsList";
    }

    /**
     * 获取具体品牌介绍
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/detail/{id}")
    public String getBrandsIntro(@PathVariable("id") int id, Model model) {
        //数据接口地址
        String brandUrl = "http://api.ycapp.yiche.com/car/getmasterbrandstory?masterid="+id;
        String serialUrl = "http://api.ycapp.yiche.com/car/getseriallist?masterid="+id;
        String brandJson = loadJSON(brandUrl);
        String serialJson = loadJSON(serialUrl);

        //转换为JSON对象
        JSONObject brandJsonObject = JSONObject.fromObject(brandJson);
        JSONObject serialJsonObject = JSONObject.fromObject(serialJson);

        //获取JSON对象里的数据
        String brandJsonStr = brandJsonObject.getString("data");
        String serialJsonStr = serialJsonObject.getString("data");
        //String serialList = serialJsonObject.getString("serialList");

        System.out.println(brandJsonStr);
        System.out.println(serialJsonStr);

//        JSONObject serialJsOb =getJsonObject(serialJsonStr);
//        JSONObject serialListJsOb =getJsonObject(serialList);
//        long len = serialJsonStr.length();
//        String jsonStrSub = serialJsonStr.substring(1, (int) (len - 1));
//        JSONObject jsonObject2 = JSONObject.fromObject(jsonStrSub);

    //    System.out.println(serialJsOb);

        //将获取的数据封装为对象
        BrandsIntro brandsIntro = JSON.parseObject(brandJsonStr, BrandsIntro.class);
//        SubBrand subBrand = JSON.parseObject(serialJsonStr, SubBrand.class);
//        Serial serial = JSON.parseObject();

        List<SubBrand> subBrandList =  JSON.parseArray(serialJsonStr, SubBrand.class);

        System.out.println(brandsIntro);
        System.out.println("\\\\\\\\\\\\\\"+subBrandList);
      //  System.out.println(subBrand);

        model.addAttribute("brandsIntro", brandsIntro);
        model.addAttribute("subBrandList", subBrandList);

        return "brandsIntro";
    }


    /**
     * 获取汽车款式
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/style/{id}")
    public String getCarStyle(@PathVariable("id") int id, Model model) {
        String url = "http://api.ycapp.yiche.com/car/GetCarListV61?csid="+id;
        String json = loadJSON(url);

        JSONObject jsonObject = JSONObject.fromObject(json);
        String jsonStr = jsonObject.getString("data");
        System.out.println(jsonStr);
        List<CarPRM> carPRMs = JSON.parseArray(jsonStr, CarPRM.class);
        System.out.println(carPRMs);
        model.addAttribute("carPRMs", carPRMs);

        return "carPRM";
    }

    /**
     * 获取具体车型详细参数
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/carPropertys/{id}")
    public String getcarPropertys(@PathVariable("id") int id, Model model) {
        String url = "http://api.ycapp.yiche.com/Car/GetCarStylePropertys?carIds="+id;
        String json = loadJSON(url);

        JSONObject jsonObject = JSONObject.fromObject(json);
        String jsonStr = jsonObject.getString("data");
        System.out.println(jsonStr);
        List<CarPropertys>  carPropertysList = JSON.parseArray(jsonStr, CarPropertys.class);
        System.out.println(carPropertysList);
        model.addAttribute("carPropertysList", carPropertysList);

        return "carPropertys";
    }

    /**
     * 从接口获取json字符串
     * @param url
     * @return
     */
    public static String loadJSON(String url) {
        StringBuilder json = new StringBuilder();
        try {
            URL oracle = new URL(url);
            URLConnection yc = oracle.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
            String inputLine = null;
            while ((inputLine = in.readLine()) != null) {
                json.append(inputLine);
            }
            in.close();
        } catch (IOException e) {
        }
        return json.toString();
    }

    /**
     * 字符串转换为JSON对象
     * @param jsonStr
     * @return
     */
    private static JSONObject getJsonObject(String jsonStr) {
        long len = jsonStr.length();
        String jsonStrSub = jsonStr.substring(1, (int) (len - 1));
        JSONObject jsonObject = JSONObject.fromObject(jsonStrSub);
        return jsonObject;
    }
}

