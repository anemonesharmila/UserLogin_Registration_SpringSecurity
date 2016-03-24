package com.controllers;

import com.model.FileUpload;
import org.springframework.validation.BindException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by sharmila on 3/5/2016.
 */
public class FileUploadController extends SimpleFormController {

    public FileUploadController()
    {
        setCommandClass(FileUpload.class);
        setCommandName("fileUploadForm");
    }

    @Override
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors)
            throws Exception {

        FileUpload file=(FileUpload)command;
        MultipartFile multipartFile=file.getFile();

        String fileName="";
        if(multipartFile !=null)
        {
            fileName=multipartFile.getOriginalFilename();
        }
        return new ModelAndView("FileUploadSuccess","fileName",fileName);
    }
}
