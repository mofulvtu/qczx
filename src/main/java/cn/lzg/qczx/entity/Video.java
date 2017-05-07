package cn.lzg.qczx.entity;

import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/**
 * <p>Title:Video</p>
 * <p>Description:汽车视频实体</p>
 * @author Liuzeg
 * @date 2017-05-03
 * @version 1.0
 */
@Data
public class Video {
	// SELECT title,source,video_img,duration,video_url,publish_time
	// from qctt_video ORDER BY publish_time DESC LIMIT 10;
	private int id;
	private String title;// 视频标题
	private String source;// 视频来源
	private String videoImg;// 视频首页图
	private String duration;// 视频时长
	private String videoUrl;// 视频地址
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Timestamp publishTime;// 视频发布时间
	private long playNum;// 播放次数

}
