package cn.lzg.qczx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.lzg.qczx.entity.Video;

/**
 * <p>Title:VideoDao</p>
 * <p>Description:Video实体对应的Dao层接口</p>
 * @author Liuzeg
 * @date 2017-05-03
 * @version 1.0
 */
public interface VideoDao {

	/**
	 * 通过视频id查找具体某条视频
	 * @param id
	 * @return Video
	 */
	Video queryById(long id);

	/**
	 * 加载范围内所有视频
	 * @param offset 查询起始位置
	 * @param limit 查询条数
	 * @return List<Video>
	 */
	List<Video> queryAll(@Param("offset") int offset, @Param("limit") int limit);

}
