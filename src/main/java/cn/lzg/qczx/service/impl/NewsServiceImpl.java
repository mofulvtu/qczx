package cn.lzg.qczx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lzg.qczx.dao.NewsDao;
import cn.lzg.qczx.entity.News;
import cn.lzg.qczx.service.NewsService;

/**
 * <p>Title:NewsServiceImpl</p>
 * <p>Description:NewsService接口实现</p>
 * @author Liuzeg
 * @date 2017-04-29
 * @version 1.0
 */
@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;

	@Override
	public News getById(long newsId) {
		return newsDao.queryById(newsId);
	}

	@Override
	public List<News> getList() {
		return newsDao.queryAll(0, 10);
	}

}
