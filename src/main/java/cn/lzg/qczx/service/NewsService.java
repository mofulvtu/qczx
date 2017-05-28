package cn.lzg.qczx.service;

import cn.lzg.qczx.entity.News;

import java.util.List;

/**
 * <p>Title:NewsService</p>
 * <p>Description:资讯News业务接口</p>
 * @author Liuzeg
 * @date 2017-04-29
 * @version 1.0
 */
public interface NewsService {

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
	 List<News> getList(String crawledStyle);

	/**
	 * 通过关键字搜索
	 * @param keyWords
	 * @return List<News>
	 */
	List<News> queryByKeyWords(String keyWords);




}
