package cn.lzg.qczx.web;

import cn.lzg.qczx.entity.News;
import cn.lzg.qczx.service.NewsService;
import cn.lzg.qczx.service.QueryService;
import net.sf.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>Title:SearchController</p>
 * <p>Description:搜索控制器</p>
 *
 * @author Liuzeg
 * @version 1.0
 * @date 2017-04-29
 */

@Controller
@RequestMapping("/search")
public class SearchController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private NewsService newsService;

    @Autowired
    private QueryService queryService;

    /**
     * 通过关键字搜索新闻
     * @param keywords
     * @param model
     * @return
     */
    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String list(@RequestParam("keywords") String keywords, Model model) {

        System.out.println(keywords.trim());
        keywords = keywords.trim();
        if (keywords != null && !keywords.equals("")) {
            List<News> list = newsService.queryByKeyWords(keywords);
            model.addAttribute("newsList", list);
        return "searchList";
        }else {
            return  "searchList";
        }

    }


    /**
     * 查询搜索结果具体信息
     * @param newsId
     * @param model
     * @return
     */
    @RequestMapping(value = "/detail/{Id}", method = RequestMethod.GET)
    public String detail(@PathVariable("Id") Long newsId, Model model) {
        if (newsId == null) {
            return "redirect:/news/list";
        }
        News news = newsService.getById(newsId);
        if (news == null) {
            return "forward:/news/list";
        }
        news.setReadNum((long) (Math.random() * 100000));
        model.addAttribute("news", news);
        return "searchDetail";
    }

    /**
     * 加载更多
     * @param at
     * @return
     */
    @RequestMapping(value = "/more/{at}", method = RequestMethod.GET)
    @ResponseBody
    public Map getMore(@PathVariable("at") int at) {
        System.out.println(at+"===");
            Map map = new HashMap<>();
        if(at!=0){
            List<News> list =  queryService.getList("%行情",at);
            JSONArray jsonArray = JSONArray.fromObject(list);
            System.out.println(jsonArray);
            map.put("result",jsonArray);
            return map;
        }else{
            map.put("result","default");
            return map;
        }

    }

}
