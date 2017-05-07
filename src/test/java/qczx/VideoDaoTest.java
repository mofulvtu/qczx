package qczx;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.lzg.qczx.dao.VideoDao;
import cn.lzg.qczx.entity.Video;

public class VideoDaoTest extends BaseTest {

	@Autowired
	private VideoDao videoDao;

	@Test
	public void testqueryAll() {
		List<Video> videoList = videoDao.queryAll(0, 4);
		for (Video video : videoList) {
			System.out.println(video);
		}
	}

}
