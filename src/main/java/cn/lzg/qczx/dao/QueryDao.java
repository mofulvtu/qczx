package cn.lzg.qczx.dao;

import cn.lzg.qczx.entity.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>Title:QueryDao</p>
 * <p>Description:查询实体对应的接口</p>
 * @author Liuzeg
 * @date 2017-04-26
 * @version 1.0
 */
public interface QueryDao {

	/**
	 * 通过id查询一条资讯
	 * @param id
	 * @return News
	 */
	News queryById(long id);

	/**
	 * 查询范围内所有热点资讯
	 * @param offset 查询起始位置
	 * @param limit 查询条数
	 * @return List<News>
	 */
	List<News> queryAll(@Param("crawledStyle") String crawledStyle, @Param("offset") int offset, @Param("limit") int limit);


	/**
	 * 通过关键字搜索
	 * @param keyWords
	 * @return
     */
	List<News> queryByKeyWords(String keyWords);

}
