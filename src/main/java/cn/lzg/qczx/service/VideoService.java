package cn.lzg.qczx.service;

import java.util.List;

import cn.lzg.qczx.entity.Video;

/**
 * <p>Title:VideoService</p>
 * <p>Description:视频业务接口</p>
 * @author Liuzeg
 * @date 2017-05-03
 * @version 1.0
 */
public interface VideoService {

	/**
	 * 查询具体一个视频
	 * @param videoId
	 * @return Video
	 */
	public Video getById(long videoId);

	/**
	 * 查询所有视频
	 * @return List<Video>
	 */
	public List<Video> getList();

}
