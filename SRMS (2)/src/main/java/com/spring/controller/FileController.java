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
		System.out.println("�ļ���" + file.getOriginalFilename());
		System.out.println("�ļ�����" + file.getContentType());
		System.out.println("�ļ���С" + file.getSize());
		String extension = "";
		int state = 0;
		String newFileName = "";
		// ��ȡ�ļ��ĺ�׺
		try {
			extension = FilenameUtils.getExtension(file.getOriginalFilename());
			// �����µ��ļ�����
			String newFileNamePrefix = (int) new Random().nextInt() * 1000
					+ new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			newFileNamePrefix = newFileNamePrefix.replace("-", "");
			newFileName = newFileNamePrefix + "." + extension;
			// �����ϴ�����
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
