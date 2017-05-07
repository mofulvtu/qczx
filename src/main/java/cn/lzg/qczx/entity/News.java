package cn.lzg.qczx.entity;

import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/**
 * <p>Title:New</p>
 * <p>Description:首页热门资讯实体</p>
 * @author Liuzeg
 * @date 2017-04-29
 * @version 1.0
 */
@Data
public class News {
	// SELECT author_name,title,centent,image_url,publish_time from
	// qctt_news_grab ORDER BY publish_time DESC limit 10;
	private long id;// 资讯Id
	private String title;// 资讯题目
	private String authorName;// 作者
	private String centent;// 内容
	private String imageUrl;// 图片地址
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Timestamp publishTime;// 发布时间
	private long readNum;// 阅读数量
	private String source;// 来源
}
