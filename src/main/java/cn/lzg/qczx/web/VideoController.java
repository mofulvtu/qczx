package cn.lzg.qczx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.lzg.qczx.entity.Video;
import cn.lzg.qczx.service.VideoService;

/**
 * <p>Title:VideoController</p>
 * <p>Description:视频控制器</p>
 * @author Liuzeg
 * @date 2017-05-03
 * @version 1.0
 */
@Controller
@RequestMapping("/video")
public class VideoController {

	@Autowired
	private VideoService videoService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		System.out.println("===========VideoController  list==============");
		List<Video> list = videoService.getList();
		model.addAttribute("videoList", list);
		return "videoList";
	}

	@RequestMapping(value = "/detail/{videoId}", method = RequestMethod.GET)
	public String detail(@PathVariable("videoId") Long videoId, Model model) {
		System.out.println("I'm here");
		if (videoId == null) {
			return "redirect:/video/videoList";
		}
		Video video = videoService.getById(videoId);
		if (video == null) {
			return "forward:/video/videoList";
		}
		video.setPlayNum((long) (Math.random() * 100000));
		model.addAttribute("video", video);
		return "videoDetail";
	}

}
