package qczx;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.lzg.qczx.dao.NewsDao;
import cn.lzg.qczx.entity.News;

public class NewsDaoTest extends BaseTest {

	/**
	 *
	 */
	@Autowired
	private NewsDao newsDao;

	@Test
	public void testqueryAll() {
		List<News> newsList = newsDao.queryAll("%新车",0, 4);
		for (News news : newsList) {
			System.out.println(news);
		}
	}

}
