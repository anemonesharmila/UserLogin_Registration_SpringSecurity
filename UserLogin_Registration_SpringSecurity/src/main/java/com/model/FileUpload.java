package com.model;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by sharmila on 3/5/2016.
 */
public class FileUpload {
    MultipartFile File;

    public MultipartFile getFile() {
        return File;
    }

    public void setFile(MultipartFile file) {
        File = file;
    }
}
