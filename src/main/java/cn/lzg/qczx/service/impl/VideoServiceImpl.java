package cn.lzg.qczx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lzg.qczx.dao.VideoDao;
import cn.lzg.qczx.entity.Video;
import cn.lzg.qczx.service.VideoService;

/**
 * <p>Title:VideoServiceImpl</p>
 * <p>Description:VideoService接口的实现</p>
 * @author Liuzeg
 * @date 2017-05-03
 * @version 1.0
 */
@Service
public class VideoServiceImpl implements VideoService {

	@Autowired
	private VideoDao videoDao;

	@Override
	public Video getById(long videoId) {
		return videoDao.queryById(videoId);
	}

	@Override
	public List<Video> getList() {
		return videoDao.queryAll(0, 10);
	}

}
