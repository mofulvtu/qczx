package cn.lzg.qczx.service;

import cn.lzg.qczx.entity.News;

import java.util.List;

/**
 * Created by 刘增刚 on 2017/5/27.
 */
public interface QueryService {

    /**
     * 查询一条资讯
     * @param newsId
     * @return News
     */
    News getById(long newsId);

    /**
     * 查询所有资讯
     * @return List<News>
     */
    List<News> getList(String crawledStyle,int tag);

    /**
     * 通过关键字搜索
     * @param keyWords
     * @return List<News>
     */
    List<News> queryByKeyWords(String keyWords);



}
