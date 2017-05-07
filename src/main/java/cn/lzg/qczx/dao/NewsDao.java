package cn.lzg.qczx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.lzg.qczx.entity.News;

/**
 * <p>Title:NewDao</p>
 * <p>Description:New实体对应的接口</p>
 * @author Liuzeg
 * @date 2017-04-29
 * @version 1.0
 */
public interface NewsDao {

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
	List<News> queryAll(@Param("offset") int offset, @Param("limit") int limit);

}
