package cn.lzg.qczx.service.impl;

import cn.lzg.qczx.dao.QueryDao;
import cn.lzg.qczx.entity.News;
import cn.lzg.qczx.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 刘增刚 on 2017/5/27.
 */
@Service
public class QueryServiceImpl implements QueryService {

    @Autowired
    private QueryDao queryDao;

    @Override
    public List<News> getList(String crawledStyle, int tag) {
        if (tag != 0) {
            int offset = tag * 10;
            int limit = 10;
            return  queryDao.queryAll(crawledStyle,offset,limit);
        }
        return null;
    }

    @Override
    public News getById(long newsId) {
        return queryDao.queryById(newsId);
    }


    @Override
    public List<News> queryByKeyWords(String keyWords) {
        return queryDao.queryByKeyWords(keyWords);
    }
}
