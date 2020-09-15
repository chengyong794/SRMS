package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.sf.json.JSONObject;

@Controller
public class FileController {

	@PostMapping(value = "/upload", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
		System.out.println("文件名" + file.getOriginalFilename());
		System.out.println("文件类型" + file.getContentType());
		System.out.println("文件大小" + file.getSize());
		String extension = "";
		int state = 0;
		String newFileName = "";
		// 获取文件的后缀
		try {
			extension = FilenameUtils.getExtension(file.getOriginalFilename());
			// 创建新的文件名字
			String newFileNamePrefix = (int) new Random().nextInt() * 1000
					+ new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			newFileNamePrefix = newFileNamePrefix.replace("-", "");
			newFileName = newFileNamePrefix + "." + extension;
			// 处理上传操作
			String path = request.getServletContext().getRealPath("/upload");
			System.out.println(path);
			file.transferTo(new File(path, newFileName));
			state = 1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("state", state);
		jsonObject.put("filename", newFileName);
		return jsonObject.toString();
	}
}
