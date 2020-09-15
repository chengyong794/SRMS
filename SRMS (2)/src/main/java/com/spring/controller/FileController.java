package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController{
    @RequestMapping("/upload")
    @ResponseBody
    public Map<String,String> upload(MultipartFile file, HttpServletRequest request) throws IOException {

        //获取文件的后缀
        String extension = FilenameUtils.getExtension(file.getOriginalFilename());
        //创建新的文件名字
        String newFileNamePrefix = UUID.randomUUID().toString().replace("-","")+
                new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        String newFileName = newFileNamePrefix+"."+extension;
        //处理上传操作
        String path= "D:\\srmsUpload";
        file.transferTo(new File(path,newFileName));
        
        Map<String,String> map = new HashMap<String,String>();
        map.put("filename", newFileName);
        return map;
    }
}