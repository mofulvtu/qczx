package cn.lzg.qczx.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.lzg.qczx.entity.News;
import cn.lzg.qczx.service.NewsService;

/**
 * <p>Title:NewsController</p>
 * <p>Description:资讯控制器</p>
 * @author Liuzeg
 * @date 2017-04-29
 * @version 1.0
 */

@Controller
@RequestMapping("/news")
public class NewsController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private NewsService newsService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<News> list = newsService.getList();
		model.addAttribute("newsList", list);
		return "list";
	}

	@RequestMapping(value = "/detail/{newsId}", method = RequestMethod.GET)
	public String detail(@PathVariable("newsId") Long newsId, Model model) {
		System.out.println("I'm here");
		logger.warn("======== NewsController detail start =======");
		if (newsId == null) {
			return "redirect:/news/list";
		}
		News news = newsService.getById(newsId);
		if (news == null) {
			return "forward:/news/list";
		}
		news.setReadNum((long) (Math.random() * 100000));
		model.addAttribute("news", news);
		logger.warn("======== NewsController detail end =======");
		return "detail";
	}
}
