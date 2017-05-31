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

import java.util.List;

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

	@RequestMapping(value = "/list/{tag}", method = RequestMethod.GET)
	public String list(@PathVariable("tag") int tag,Model model) {
		String crawledStyle = "";
		if(tag==1){
			crawledStyle = "%商情";
			List<News> list = newsService.getList(crawledStyle);
			List<News> carouselList = newsService.getCarousel();
			model.addAttribute("newsList", list);
			model.addAttribute("carouselList",carouselList);
			return "list";
		}else if(tag==2){
			crawledStyle = "%行情";
			List<News> list = newsService.getList(crawledStyle);
			model.addAttribute("newsList", list);
			return "carList";
		}else{
			crawledStyle = "%促销";
			List<News> list = newsService.getList(crawledStyle);
			model.addAttribute("newsList", list);
			return "saleList";
		}
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

	@RequestMapping(value = "/newCar/{newsId}", method = RequestMethod.GET)
	public String newCarDetail(@PathVariable("newsId") Long newsId, Model model) {
		if (newsId == null) {
			return "redirect:/news/list";
		}
		News news = newsService.getById(newsId);
		if (news == null) {
			return "forward:/news/list";
		}
		news.setReadNum((long) (Math.random() * 100000));
		model.addAttribute("news", news);
		return "carDetail";
	}

	@RequestMapping(value = "/sale/{newsId}", method = RequestMethod.GET)
	public String saleDetail(@PathVariable("newsId") Long newsId, Model model) {
		if (newsId == null) {
			return "redirect:/news/list";
		}
		News news = newsService.getById(newsId);
		if (news == null) {
			return "forward:/news/list";
		}
		news.setReadNum((long) (Math.random() * 100000));
		model.addAttribute("news", news);
		return "saleDetail";
	}
}
