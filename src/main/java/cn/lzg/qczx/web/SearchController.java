package cn.lzg.qczx.web;

import cn.lzg.qczx.entity.News;
import cn.lzg.qczx.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

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

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String list(@RequestParam("keywords") String keywords, Model model) {

        System.out.println(keywords.trim());
        keywords = keywords.trim();
        if (keywords != null && !keywords.equals("")) {
            List<News> list = newsService.queryByKeyWords(keywords);
            model.addAttribute("newsList", list);
        return "searchList";
        }else {
            return  "";
        }

    }


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


}
