package cn.lzg.qczx.service.impl;

import cn.lzg.qczx.dao.NewsDao;
import cn.lzg.qczx.entity.News;
import cn.lzg.qczx.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>Title:NewsServiceImpl</p>
 * <p>Description:NewsService接口实现</p>
 *
 * @author Liuzeg
 * @version 1.0
 * @date 2017-04-29
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
    public List<News> getList(String crawledStyle) {
        return newsDao.queryAll(crawledStyle, 0, 10);
    }

    @Override
    public List<News> queryByKeyWords(String keyWords) {
        if (keyWords.trim() != "") {
            keyWords = "%" + keyWords + "%";
            return newsDao.queryByKeyWords(keyWords,0,10);
        } else {
            return null;
        }
    }

    @Override
    public List<News> getCarousel() {
        return newsDao.queryCarousel("%降价",0,4);
    }

}
